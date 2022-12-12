#ifndef SQLOP_H
#define SQLOP_H

#include <mysql/mysql.h>
#include <iostream>
#include <string.h>
#include <vector>

class SqlOp
{
    public:
        static std::vector<std::vector<std::string>> sqlhandle(MYSQL *mysql,const char* querysql);
};
#endif