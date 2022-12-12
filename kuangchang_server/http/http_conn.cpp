#define _GLIBCXX_USE_CXX11_ABI 1

#include"../http/http_conn.h"

class MainLoop;

int setnonblocking(int fd)//设置非阻塞
{
	int old_option=fcntl(fd,F_GETFL);
	int new_option=old_option|O_NONBLOCK;
	fcntl(fd,F_SETFL,new_option);
	return old_option;
}

void addfd(int epollfd,int fd,bool one_shot)//添加要监控的套接字
{
	epoll_event event;
	event.data.fd=fd;
	event.events=EPOLLIN|EPOLLRDHUP;//水平触发
	if(one_shot)
	{
		event.events|=EPOLLONESHOT;
	}
	epoll_ctl(epollfd,EPOLL_CTL_ADD,fd,&event);
	setnonblocking(fd);
}

void removefd(int epollfd,int fd)//移除套接字
{
	epoll_ctl(epollfd,EPOLL_CTL_DEL,fd,0);
	close(fd);	
}

void modfd(int epollfd,int fd,int ev)//重置为EPOLLONESHOT
{
	epoll_event event;
	event.data.fd=fd;
	event.events=ev|EPOLLONESHOT|EPOLLRDHUP;
	epoll_ctl(epollfd,EPOLL_CTL_MOD,fd,&event);
}

int http_conn::m_user_count=0;
int http_conn::m_epollfd=-1;
connection_pool *http_conn::m_connPool;

void http_conn::close_conn(bool real_close)//关闭连接
{
	if(real_close&&(m_sockfd!=-1))
	{
		removefd(m_epollfd,m_sockfd);
		m_sockfd=-1;
		m_user_count--;
		m_conntime.tv_sec=0;
		m_conntime.tv_usec=0;
		connection_status=false;
	}
}

void http_conn::init(int sockfd,const sockaddr_in &addr)
{
	m_sockfd=sockfd;//设置该http所连接的socket
	m_address=addr;//和其地址
	addfd(m_epollfd,sockfd,true);
	m_user_count++;
	init();
}

void http_conn::init()
{
	m_write_idx=0;
	isrecving=false;
	m_read_length=0;
	m_msg_length=0;
	connection_status=true;
	memset(m_read_buf,'\0',READ_BUFFER_SIZE);
	memset(m_write_buf,'\0',WRITE_BUFFER_SIZE);
	memset(m_real_file,'\0',FILENAME_LEN);
	printf("init ok\n");
}

bool http_conn::myread()
{
	int bytes_read=0;
	bytes_read=recv(m_sockfd,m_read_buf,READ_BUFFER_SIZE,0);
	if(bytes_read<=0)
	{
		return false;
	}
	if(!isrecving)
	{
		strncpy(m_no,m_read_buf,2);
		m_method=NOtoMethod[m_no];
		int temp=1;
		for(int i=5;i>=2;i--)
		m_msg_length+=m_read_buf[i]*temp,temp*=256;
		printf("msglen:%d\n",m_msg_length);
		bytes_read-=6;
		if(bytes_read+m_read_length<m_msg_length)
		{
			isrecving=true;
			modfd(m_epollfd,m_sockfd,EPOLLIN);
		}
		m_recv_content=m_read_buf+6;
	}
	else
	{
		if(bytes_read+m_read_length>=m_msg_length)
		{
			isrecving=false;
		}
		else
		{
			modfd(m_epollfd,m_sockfd,EPOLLIN);
		}
		m_recv_content+=m_read_buf;
	}
	m_read_length+=bytes_read;
	printf("recvmsglen:%d\n\n",m_read_length);
	memset(m_read_buf,'\0',READ_BUFFER_SIZE);

	return true;
}

bool http_conn::do_request()
{
	//printf("dorequest%d\n",m_method);  
	if(m_method==LoginRequest)
	{
		login_proto::user_login_request request;
		request.ParseFromString(m_recv_content);
		printf("loginrequest\n");
	    printf("account:%s\n",request.account().c_str());
	    printf("password:%s\n",request.password().c_str());
		m_account=request.account();
		login_proto::user_login_reply reply;
	    if(BusinessOp::IsLoginSuccess(request.account(),request.password()))
	    {
			BusinessOp::AddUsertoSockfd(request.account(),m_sockfd);
			std::vector<std::string> msg(BusinessOp::GetUserMsg(request.account()));
			reply.set_issuccess(true);
			for(int i=0;i<msg.size();i++)
			{
				reply.add_msg(msg[i]);
			}
			printf("login success\n");
	    }
	    else
	    {
			connection_status=false;
			reply.set_issuccess(false);
			printf("login failed\n");
	    }
		reply.SerializeToString(&m_send_content);
	}
	else if(m_method==RegisterRequest)
	{
		register_proto::user_register_request request;
		request.ParseFromString(m_recv_content);
		printf("registerrequest\n");
	    printf("account:%s\n",request.account().c_str());
	    printf("password:%s\n",request.password().c_str());
		printf("username:%s\n",request.name().c_str());
		m_account=request.account();
		MYSQL *mysql=NULL;
    	connectionRAII sqlcon(&mysql,m_connPool);
		char sqlstr[100];
		sprintf(sqlstr,"select Id from User where Account='%s'",request.account().c_str());
    	auto res=SqlOp::sqlhandle(mysql,sqlstr);
		register_proto::user_register_reply reply;
		if(res.size()==0)
		{
			mysql=NULL;
    		connectionRAII sqlcon(&mysql,m_connPool);
			memset(sqlstr,'\0',sizeof(sqlstr));
			sprintf(sqlstr,"insert into User(Account,Password,UserName) values('%s','%s','%s')",request.account().c_str(),request.password().c_str(),request.name().c_str());
			SqlOp::sqlhandle(mysql,sqlstr);
			reply.set_issuccess(true);
			printf("register success\n");
		}
		else if(m_method==UpdateAvatar)
		{
			connection_status=false;
			reply.set_issuccess(false);
			printf("register failed\n");
		}
		reply.SerializeToString(&m_send_content);
	}
	else if(m_method==UpdateAvatar)
	{
		UpdateAvatar_proto::UpdateAvatar_request request;
		request.ParseFromString(m_recv_content);
		printf("updateavatarrequest\n");
		printf("account:%s\n",request.account().c_str());
		printf("avatar:%s\n",request.avatar().c_str());
		MYSQL *mysql=NULL;
    	connectionRAII sqlcon(&mysql,m_connPool);
		char sqlstr[100+request.avatar().size()];
		
		sprintf(sqlstr,"update User set UserAvatar='%s' where Account='%s'",request.avatar().c_str(),request.account().c_str());
		SqlOp::sqlhandle(mysql,sqlstr);
		UpdateAvatar_proto::UpdateAvatar_reply reply;
		reply.set_issuccess(true);
		reply.SerializeToString(&m_send_content);
	}
	sprintf(m_write_buf,"%s%s",m_no,m_send_content.c_str());
	m_write_idx=m_send_content.size()+2;
	std::cout<<m_write_idx<<std::endl;
	return true;
}

void http_conn::unmap()
{
	if(m_file_address)
	{
		munmap(m_file_address,m_file_stat.st_size);
		m_file_address=0;
	}
}

bool http_conn::mywrite()
{
	//if(m_method==0)
	//	return true;
	int temp=0;
	int bytes_have_send=0;
	int bytes_to_send=m_write_idx;
	if(bytes_to_send==0)
	{
		modfd(m_epollfd,m_sockfd,EPOLLIN);
		init();
		return true;
	}
	while(1)
	{
		temp=writev(m_sockfd,m_iv,m_iv_count);
		if(temp<=-1)
		{
			if(errno==EAGAIN)
			{
				modfd(m_epollfd,m_sockfd,EPOLLOUT);
				return true;
			}
			unmap();
			return false;
		}
		printf("send:%s\n%d\n",m_write_buf,m_write_idx);
		bytes_to_send-=temp;
		bytes_have_send+=temp;
		if(bytes_to_send<=bytes_have_send)
		{
			unmap();
			{
				init();
				modfd(m_epollfd,m_sockfd,EPOLLIN);
				return true;
			}
		}
	}
	if(!connection_status)
		close_conn();
}

bool http_conn::process_write()
{
	m_iv[0].iov_base=m_write_buf;
	m_iv[0].iov_len=m_write_idx;
	m_iv_count=1;
	if(m_method==LoginRequest)
	{
		return true;
	}
	else if(m_method==RegisterRequest)
	{
		return true;
	}
	else if(m_method==UpdateAvatar)
	{
		return true;
	}
	return false;
}

void http_conn::process()
{
	//printf("process\n");
	do_request();
	bool write_ret=process_write();
	if(!write_ret)
	{
		close_conn();
	}
	modfd(m_epollfd,m_sockfd,EPOLLOUT);
}
