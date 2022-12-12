#ifndef _CONNECTION_POOL_
#define _CONNECTION_POOL_

#include<stdio.h>
#include<list>
#include<mysql/mysql.h>
#include<error.h>
#include<iostream>
#include<string>
#include<stdlib.h>

#include"../locker/locker.h"

typedef std::string string;

class connection_pool
{
public:
	MYSQL *GetConnection();
	bool ReleaseConnection(MYSQL *conn);
	int GetFreeConn();
	void DestroyPools();
	static connection_pool *GetInstance();
	void init(string hostaddr,string User,string Password,string DataBaseName,int Port,int MaxConn);
public:
	connection_pool();
	~connection_pool();
private:
	int m_MaxConn;
	int m_CurConn;
	int m_FreeConn;
	locker lock;
	std::list<MYSQL*> connList;
	sem reserve;
public:
	string m_hostaddr;
	string m_Port;
	string m_User;
	string m_Password;
	string m_DataBaseName;
};
class connectionRAII
{
public:
	connectionRAII(MYSQL **conn,connection_pool *connPools);
	~connectionRAII();
private:
	MYSQL *conRAII;
	connection_pool *poolRAII;
};
#endif
