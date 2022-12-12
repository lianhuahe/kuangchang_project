#include "loginusers.h"

std::map<std::string,std::string> LoginUsers::LoginUsersTable;
std::map<std::string,int> LoginUsers::UsertoSockfd;
std::map<std::string,std::vector<std::string>> LoginUsers::UsertoMsg;

void LoginUsers::AddLoginUsers(std::string Ac,std::string Ps)
{
    LoginUsersTable[Ac]=Ps;
}

bool LoginUsers::IsLoginSuccess(std::string Ac,std::string Ps)
{
    return LoginUsersTable.find(Ac)!=LoginUsersTable.end()&&LoginUsersTable[Ac]==Ps;
}

void LoginUsers::AddUsertoSockfd(std::string Ac,int fd)
{
    UsertoSockfd.emplace(Ac,fd);
}

int LoginUsers::GetUserSockfd(std::string Ac)
{
    return LoginUsersTable.find(Ac)!=LoginUsersTable.end()?UsertoSockfd[Ac]:-1;
}

void LoginUsers::DelUsertoSockfd(std::string Ac)
{
    UsertoSockfd.erase(Ac);
}

void LoginUsers::AddUserMsg(std::string Ac,std::vector<std::string> Msg)
{
    UsertoMsg[Ac]=Msg;
}

std::string LoginUsers::GetUserMsg(std::string Ac)
{
    std::string res=UsertoMsg[Ac][0]+"\n"+UsertoMsg[Ac][1]+"\n";
    return res;
}
