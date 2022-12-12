#define _GLIBCXX_USE_CX11_ABI 1

#include"./mainloop/mainloop.h"

int main(int argc,char *argv[])
{
	if(argc<=2)
	{
		printf("error\n");
		return 1;
	}
	const char *ip=argv[1];
	int port=atoi(argv[2]);
	MainLoop mainloop(ip,port);printf("2\n");
	mainloop.init();printf("1\n");
	mainloop.start();printf("1\n");
	return 0;
}
