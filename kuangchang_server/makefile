OBJS =main.o  mainloop.o  http_conn.o sqlpool.o  sqlop.o businessop.o  login.pb.o register.pb.o UpdateAvatar.pb.o

server:$(OBJS)
	g++ -o server $(OBJS) -lpthread -lssl -lcrypto  -L/usr/lib64/mysql -lmysqlclient -lprotobuf

businessop.o:./businessop/businessop.cpp ./businessop/businessop.h
	g++ -c ./businessop/businessop.cpp
sqlop.o:./sqlop/sqlop.cpp ./sqlop/sqlop.h
	g++ -c ./sqlop/sqlop.cpp
sqlpool.o:./sqlpool/sqlpool.cpp ./sqlpool/sqlpool.h 
	g++ -c ./sqlpool/sqlpool.cpp
login.pb.o:./protofile/loginproto/login.pb.cc ./protofile/loginproto/login.pb.h
	g++ -c ./protofile/loginproto/login.pb.cc -lprotobuf
register.pb.o:./protofile/registerproto/register.pb.cc ./protofile/registerproto/register.pb.h
	g++ -c ./protofile/registerproto/register.pb.cc -lprotobuf
UpdateAvatar.pb.o:./protofile/UpdateAvatarProto/UpdateAvatar.pb.cc ./protofile/UpdateAvatarProto/UpdateAvatar.pb.h
	g++ -c ./protofile/UpdateAvatarProto/UpdateAvatar.pb.cc -lprotobuf
http_conn.o:./http/http_conn.cpp ./sqlpool/sqlpool.cpp ./sqlop/sqlop.cpp ./businessop/businessop.cpp  ./protofile/loginproto/login.pb.cc  ./protofile/registerproto/register.pb.cc  ./protofile/UpdateAvatarProto/UpdateAvatar.pb.cc ./http/http_conn.h sqlpool/sqlpool.h ./sqlop/sqlop.h ./businessop/businessop.h ./locker/locker.h  ./protofile/loginproto/login.pb.h  ./protofile/registerproto/register.pb.h ./protofile/UpdateAvatarProto/UpdateAvatar.pb.h
	g++ -c ./http/http_conn.cpp ./sqlpool/sqlpool.cpp ./sqlop/sqlop.cpp ./businessop/businessop.cpp ./protofile/loginproto/login.pb.cc ./protofile/registerproto/register.pb.cc  ./protofile/UpdateAvatarProto/UpdateAvatar.pb.cc
mainloop.o:./mainloop/mainloop.cpp  ./http/http_conn.cpp  ./mainloop/mainloop.h ./http/http_conn.h  ./threadpool/threadpool.h 
	g++ -c ./mainloop/mainloop.cpp ./http/http_conn.cpp
main.o:./mainloop/mainloop.h

clean:
	rm -r server $(OBJS)

