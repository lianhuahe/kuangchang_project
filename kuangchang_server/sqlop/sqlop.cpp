#include "sqlop.h"

std::vector<std::vector<std::string>> SqlOp::sqlhandle(MYSQL *mysql,const char* querysql)
{
    mysql_query(mysql,querysql);
    if(querysql[0]!='s')
    return {{}};
    MYSQL_RES *result=mysql_store_result(mysql);
    int num_rows=mysql_num_rows(result);//结果的行数
    int num_fields=mysql_num_fields(result);//结果的列数
    std::vector<std::vector<std::string>>  res(num_rows,std::vector<std::string>(num_fields));
    int i=0;
    while(MYSQL_ROW row=mysql_fetch_row(result))
    {
        for(int j=0;j<num_fields;j++)
        {
            res[i][j]=row[j];
        }
        i++;
    }
    return res;
}