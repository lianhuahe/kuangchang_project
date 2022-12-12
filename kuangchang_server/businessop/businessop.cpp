#include "businessop.h"

std::map<std::string,std::string> BusinessOp::LoginUsersTable;
std::map<std::string,int> BusinessOp::UsertoSockfd;
std::map<std::string,std::vector<std::string>> BusinessOp::UsertoMsg;

void BusinessOp::AddLoginUsers(std::string Ac,std::string Ps)
{
    LoginUsersTable[Ac]=Ps;
}

bool BusinessOp::IsLoginSuccess(std::string Ac,std::string Ps)
{
    return LoginUsersTable.find(Ac)!=LoginUsersTable.end()&&LoginUsersTable[Ac]==Ps;
}

void BusinessOp::AddUsertoSockfd(std::string Ac,int fd)
{
    UsertoSockfd.emplace(Ac,fd);
}

int BusinessOp::GetUserSockfd(std::string Ac)
{
    return LoginUsersTable.find(Ac)!=LoginUsersTable.end()?UsertoSockfd[Ac]:-1;
}

void BusinessOp::DelUsertoSockfd(std::string Ac)
{
    UsertoSockfd.erase(Ac);
}

void BusinessOp::AddUserMsg(std::string Ac,std::vector<std::string> Msg)
{
    UsertoMsg[Ac]=Msg;
}

std::vector<std::string> BusinessOp::GetUserMsg(std::string Ac)
{
    std::vector<std::string> res{UsertoMsg[Ac][0],UsertoMsg[Ac][1]};
    return res;
}