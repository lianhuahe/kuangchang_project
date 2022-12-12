#include"sqlpool.h"

typedef std::string string;

connection_pool::connection_pool()
{
    m_CurConn=0;
    m_FreeConn=0;
}

connection_pool *connection_pool::GetInstance()
{
    static connection_pool connPool;
    return &connPool;
}

void connection_pool::init(string hostaddr,string User,string PassWord,string DBName,int Port,int Maxconn)
{
    m_hostaddr=hostaddr;
    m_Port=Port;
    m_User=User;
    m_Password=PassWord;
    m_DataBaseName=DBName;

    for(int i=0;i<Maxconn;i++)
    {
	MYSQL *con=NULL;
	con=mysql_init(con);
	if(con==NULL)
	{
	    exit(1);
	}
	con=mysql_real_connect(con,hostaddr.c_str(),User.c_str(),PassWord.c_str(),DBName.c_str(),Port,NULL,0);
	if(con==NULL)
	{
	    exit(1);
	}
	connList.push_back(con);
	++m_FreeConn;
    }
    reserve=sem(m_FreeConn);
    m_MaxConn=m_FreeConn;
}

MYSQL *connection_pool::GetConnection()
{
    MYSQL *con=NULL;
    if(connList.size()==0)
	return NULL;
    reserve.wait();
    lock.lock();
    con=connList.front();
    connList.pop_front();
    --m_FreeConn;
    ++m_CurConn;
    lock.unlock();
    return con;
}

bool connection_pool::ReleaseConnection(MYSQL *con)
{
    if(con==NULL)
	return false;
    lock.lock();
    connList.push_back(con);
    ++m_FreeConn;
    --m_CurConn;
    lock.unlock();
    reserve.post();
    return true;
}

void connection_pool::DestroyPools()
{
    lock.lock();
    if(connList.size()>0)
    {
	std::list<MYSQL*>::iterator it;
	for(it=connList.begin();it!=connList.end();it++)
	{
	    MYSQL *con=*it;
	    mysql_close(con);
	}
	m_CurConn=0;
	m_FreeConn=0;
	connList.clear();
    }
    lock.unlock();
}

int connection_pool::GetFreeConn()
{
    return this->m_FreeConn;
}

connection_pool::~connection_pool()
{
    DestroyPools();
}

connectionRAII::connectionRAII(MYSQL **SQL,connection_pool *connPool)
{
	*SQL=connPool->GetConnection();
	conRAII=*SQL;
	poolRAII=connPool;
}
connectionRAII::~connectionRAII()
{
	poolRAII->ReleaseConnection(conRAII);
}
