#ifndef LOGINUSERS_H
#define LOGINUSERS_H

#include <iostream>
#include  <string.h>
#include <map>
#include <vector>

class BusinessOp
{
    private:
        static std::map<std::string,std::string> LoginUsersTable;
        static std::map<std::string,int> UsertoSockfd;
        static std::map<std::string,std::vector<std::string>> UsertoMsg;//名称
    
    public:
        static void AddLoginUsers(std::string Ac,std::string Ps);
        static bool IsLoginSuccess(std::string Ac,std::string Ps);
        static void AddUsertoSockfd(std::string Ac,int fd);
        static int GetUserSockfd(std::string Ac);
        static void DelUsertoSockfd(std::string Ac);
        static void AddUserMsg(std::string Ac,std::vector<std::string> Msg);
        static std::vector<std::string> GetUserMsg(std::string Ac);
};
#endif
