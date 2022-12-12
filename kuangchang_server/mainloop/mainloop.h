#include<sys/socket.h>
#include<netinet/in.h>
#include<arpa/inet.h>
#include<stdio.h>
#include<unistd.h>
#include<errno.h>
#include<string.h>
#include<fcntl.h>
#include<stdlib.h>
#include<cassert>
#include<sys/epoll.h>
#include<map>
#include<signal.h>
#include<memory>
#include<sys/time.h>
#include<queue>
#include<boost/unordered_set.hpp>
#include<boost/circular_buffer.hpp>
#include<boost/any.hpp>

#include"../threadpool/threadpool.h"
#include"../http/http_conn.h"

#define MAX_FD 65536
#define MAX_EVENT_NUMBER 10000

struct CloseConn
{
    explicit CloseConn(http_conn* user,timeval time)
        :connuser(user),closetime(time)
    {
    }
   http_conn* connuser;
    timeval closetime;
};

class MainLoop
{   
    public:
    static char Connection_Interrupted[3];
    struct Entry
    {
	    explicit Entry(http_conn* user,timeval time,string account)
		    : connuser(user),conntime(time),connaccount(account)
	    {
	    }
	    ~Entry()
	    {
		    if(conntime.tv_sec==connuser->m_conntime.tv_sec&&conntime.tv_usec==connuser->m_conntime.tv_usec&&connaccount==connuser->getAccount())
		    {
			    write(connuser->getsockfd(),Connection_Interrupted,sizeof(Connection_Interrupted));
                timeval now;
                gettimeofday(&now,NULL);
                MainLoop::closequeue.emplace(connuser,now);
			    //connuser->close_conn();
		    }
	    }
	    http_conn *connuser;
	    timeval conntime;
	    string connaccount;
    };
    typedef std::shared_ptr<Entry> EntryPtr;
    typedef std::weak_ptr<Entry> WeakEntryPtr;
    typedef boost::unordered_set<EntryPtr> Bucket;
    typedef boost::circular_buffer<Bucket> TimingWheel;
    typedef std::queue<CloseConn> CloseQueue;
    public:
        MainLoop (const char *_ip,int _port);
        ~MainLoop();
        void eventloop(int number);
        void heartbeat();
        void start();
        void init();
        
    private:
        void InitSqlPool();
        void InitThreadPool();
        void InitTimingWheel();
        void LoginInit();

    private:
        connection_pool *m_connPool;
        threadpool<http_conn> *pool;
        int user_count;
        http_conn* users;
        int listenfd;
        struct sockaddr_in address;
        const char *ip;
	    int port;
        epoll_event events[MAX_EVENT_NUMBER];
        int epollfd;
        TimingWheel m_timewheel;
        timeval m_pretime;

    private:
        static CloseQueue closequeue;
};
