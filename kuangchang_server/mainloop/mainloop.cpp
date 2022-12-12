#include "mainloop.h"

extern int addfd(int epollfd,int fd,bool one_shot);
extern int removefd(int epollfd,int fd);

char MainLoop::Connection_Interrupted[3]="zz";

void addsig(int sig,void(handler)(int),bool restart=true)
{
	struct sigaction sa;
	memset(&sa,'\0',sizeof(sa));
	sa.sa_handler=handler;
	if(restart)
	{
		sa.sa_flags|=SA_RESTART;
	}
	sigfillset(&sa.sa_mask);
	assert(sigaction(sig,&sa,NULL)!=-1);
}

void show_error(int connfd,const char *info)
{
	printf("%s",info);
	send(connfd,info,strlen(info),0);
	close(connfd);
}

std::queue<CloseConn> MainLoop::closequeue;

MainLoop::MainLoop(const char *_ip,int _port):ip(_ip),port(_port)
{
    
}

void MainLoop::init()
{
    addsig(SIGPIPE,SIG_IGN);//忽略SIGPIPE信号
    InitSqlPool();
    InitThreadPool();
	InitTimingWheel();
	assert(m_timewheel.size()>0);
	gettimeofday(&m_pretime,NULL);
    users=new http_conn[MAX_FD];
	user_count=0;
    listenfd=socket(PF_INET,SOCK_STREAM,0);
	assert(listenfd>=0);
	struct linger tmp={1,0};
	setsockopt(listenfd,SOL_SOCKET,SO_LINGER,&tmp,sizeof(tmp));
    bzero(&address,sizeof(address));
	address.sin_family=AF_INET;
	inet_pton(AF_INET,ip,&address.sin_addr);
	address.sin_port=htons(port);
	assert(bind(listenfd,(struct sockaddr*)&address,sizeof(address))>=0);
	assert(listen(listenfd,5)>=0);
    epollfd=epoll_create(5);
	assert(epollfd!=-1);
	addfd(epollfd,listenfd,false);
	http_conn::m_epollfd=epollfd;
    LoginInit();
}

MainLoop::~MainLoop()
{

}

void MainLoop::eventloop(int number)
{
	for(int i=0;i<number;i++)
		{
			int sockfd=events[i].data.fd;
			if(sockfd==listenfd)
			{
				struct sockaddr_in client_address;
				socklen_t client_addrlength=sizeof(client_address);
				int connfd=accept(listenfd,(struct sockaddr*)&client_address,&client_addrlength);
				if(connfd<0)
				{
					printf("errno is:%d\n",errno);
					continue;
				}
				if(http_conn::m_user_count>=MAX_FD)
				{
					show_error(connfd,"Internal server busy");
					continue;
				}
				users[connfd].init(connfd,client_address);
				char *ipaddr=inet_ntoa(client_address.sin_addr);
				printf("A new user has connected.\nIpAddr:%s\nThe current number of online users is: %d\n\n",ipaddr,http_conn::m_user_count);
				timeval now;
				gettimeofday(&now,NULL);
				users[connfd].m_conntime=now;
				EntryPtr entryptr(new Entry(&users[connfd],now,users[connfd].getAccount()));
				users[connfd].weak_entryptr=WeakEntryPtr(entryptr);
				m_timewheel.back().insert(entryptr);
			}
			else if(events[i].events&(EPOLLRDHUP|EPOLLHUP|EPOLLERR))
		    {
				printf("One user disconnected\nThe current number of online users is: %d\n\n",http_conn::m_user_count);
				users[sockfd].close_conn();
			}
			else if(events[i].events&EPOLLIN)
			{
				printf("new request\n");
				if(users[sockfd].myread())
				{
					if(users[sockfd].checkIsInRecving())
						continue;
					pool->append(users+sockfd);
					timeval now;
					gettimeofday(&now,NULL);
					WeakEntryPtr weakEntry(boost::any_cast<WeakEntryPtr>(users[sockfd].weak_entryptr));
					EntryPtr entryptr(weakEntry);
					m_timewheel.back().insert(entryptr);
				}
				else
				{
					users[sockfd].close_conn();
				}
			}
			else if(events[i].events&EPOLLOUT)
			{
				if(!users[sockfd].mywrite())
				{
					users[sockfd].close_conn();
				}
			}
		}
}
void MainLoop::heartbeat()
{
	timeval now;
	gettimeofday(&now,NULL);
	if(now.tv_sec-m_pretime.tv_sec>=5)
	{
		m_pretime=now;
		m_timewheel.push_back(Bucket());
	}
	while(!closequeue.empty())
	{
		CloseConn conn=MainLoop::closequeue.front();
		if(now.tv_sec-conn.closetime.tv_sec>=1)
		{
			conn.connuser->close_conn();
			closequeue.pop();
		}
		else
		{
			break;
		}
	}
}

void MainLoop::start()
{
    while(true)
	{
		int number=epoll_wait(epollfd,events,MAX_EVENT_NUMBER,1);
		if((number<0)&&(errno!=EINTR))
		{
			printf("epoll failure\n");
			break;
		}
		eventloop(number);
		heartbeat();
	}
}

void MainLoop::InitSqlPool()
{
    m_connPool=connection_pool::GetInstance();
	m_connPool->init("localhost","debian-sys-maint","Lianhua123!","KCDB",3306,8);
	http_conn::m_connPool=m_connPool;
}

void MainLoop::InitThreadPool()
{
	pool=new threadpool<http_conn>;
}

void MainLoop::InitTimingWheel()
{
	m_timewheel.resize(180);//5秒为单位
}

void MainLoop::LoginInit()
{
    MYSQL *mysql=NULL;
    connectionRAII sqlcon(&mysql,m_connPool);
    auto res=SqlOp::sqlhandle(mysql,"select Account,Password,Id,UserName from User");
    std::vector<std::string> msg(2);
    for(int i=0;i<res.size();i++)
    {
	   // printf("%s  %s  %s\n",res[i][0].c_str(),res[i][1].c_str(),res[i][2].c_str());
        BusinessOp::AddLoginUsers(res[i][0],res[i][1]);
		msg[0]=res[i][2];
		msg[1]=res[i][3];
        BusinessOp::AddUserMsg(res[i][0],msg);
    }
}
