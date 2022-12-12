#ifndef HTTPCONN_H
#define HTTPCONN_H

#include<unistd.h>
#include<signal.h>
#include<sys/types.h>
#include<sys/epoll.h>
#include<fcntl.h>
#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<assert.h>
#include<sys/stat.h>
#include<string>
#include<pthread.h>
#include<stdlib.h>
#include<sys/mman.h>
#include<stdarg.h>
#include<errno.h>
#include<sys/uio.h>
#include<map>
#include<stdio.h>
#include<vector>
#include<fstream>
#include<iostream>
#include<mysql/mysql.h>
#include<vector>
#include<string.h>
#include<sys/time.h>
#include<boost/any.hpp>
#include<boost/unordered_map.hpp>

#include"../businessop/businessop.h"
#include"../sqlpool/sqlpool.h"
#include"../locker/locker.h"
#include"../sqlop/sqlop.h"
#include"../protofile/loginproto/login.pb.h"
#include"../protofile/registerproto/register.pb.h"
#include"../protofile/UpdateAvatarProto/UpdateAvatar.pb.h"

class http_conn
{
	public:
		static const int FILENAME_LEN=200;//文件名的最大长度
		static const int READ_BUFFER_SIZE=2048;//读缓冲区大小
		static const int WRITE_BUFFER_SIZE=2048;//写缓冲区大小
		
		enum METHOD{LoginRequest,RegisterRequest,UpdateAvatar};//请求方式
		boost::unordered_map<string,METHOD> NOtoMethod{
			{"aa",LoginRequest},{"ab",RegisterRequest},{"ac",UpdateAvatar}
		} ;
	
	public:
		http_conn(){}
		~http_conn(){}

	public:
		void init(int sockfd,const sockaddr_in& addr);//初始化新接受的连接
		void close_conn(bool real_close=true);//关闭连接
		void process();//处理客户需求
		bool myread();//非阻塞写
		bool mywrite();//非阻塞读
		bool checkIsInRecving(){return isrecving;}
		string getAccount(){return m_account;}
		int getsockfd(){return m_sockfd;}

	private:
		void init();//初始化连接
		bool process_write();//填充应答
		bool do_request();//true代表需要回信，false反之
		void unmap();

	public:
		static connection_pool *m_connPool;
		static int m_epollfd;
		static int m_user_count;
		timeval m_conntime;
		boost::any weak_entryptr;

	private:
		string m_account;//该连接所处理的用户的帐号，用于身份验证
		bool connection_status;//记录连接状态，用于关闭连接

		string m_send_content;//存储将要发送的消息
		string m_recv_content;//存储已经接受的消息

		char m_no[3];//当前处理的消息的类型
		bool isrecving;
		int m_read_length;//已经读入字节数
		int m_msg_length;//总共需要读入的字节数

		int m_sockfd;//该http所连接的socket
		sockaddr_in m_address;//和其地址

		char m_read_buf[READ_BUFFER_SIZE];//读缓冲区

		char m_write_buf[WRITE_BUFFER_SIZE];//写缓冲区
		int m_write_idx;//表示写缓冲区中待发送的字节数

		METHOD m_method;//请求方法

		char m_real_file[FILENAME_LEN];//客户请求的目标文件的完整路径

		char *m_file_address;//客户请求的目标文件被mmap映射到内存中的起始位置
		struct stat m_file_stat;//目标文件状态
		struct iovec m_iv[2];//指定内存快
		int m_iv_count;//被写内存块数量

};
#endif
