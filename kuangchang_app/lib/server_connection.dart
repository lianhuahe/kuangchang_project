/*import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/io.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;*/
import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'dart:typed_data';
import 'package:get/get.dart';

import 'user_msg.dart';
import 'package:flutter/material.dart';
import 'package:kuangchang_app/user_msg.dart';
import 'protofile/loginproto/login.pb.dart';
import 'protofile/registerproto/register.pb.dart';
/// WebSocket地址
const String _SOCKET_URL = "ws://123.249.9.132:443/ping";

/// WebSocket状态
enum SocketStatus {
  SocketStatusConnected, // 已连接
  SocketStatusFailed, // 失败
  SocketStatusClosed, // 连接关闭
}
/*
class WebSocketUtility {
  /// 单例对象

  WebSocketUtility._privateConstructor();

  static final WebSocketUtility _instance = WebSocketUtility._privateConstructor();

  factory WebSocketUtility(){
    return _instance;
  }


  IOWebSocketChannel? _webSocket; // WebSocket
  SocketStatus? _socketStatus; // socket状态
  Function? onError; // 连接错误回调
  Function? onOpen; // 连接开启回调
  Function? onMessage; // 接收消息回调

  /// 初始化WebSocket
  void initWebSocket({required Function onOpen, required Function onMessage, required Function onError}) {
    this.onOpen = onOpen;
    this.onMessage = onMessage;
    this.onError = onError;
    print('trying...');
    openSocket();
  }

  /// 开启WebSocket连接
  void openSocket() {
    //closeSocket();
    _webSocket = IOWebSocketChannel.connect(_SOCKET_URL);
    if(_webSocket!=null)
    print('WebSocket连接成功: $_SOCKET_URL');
    // 连接成功，返回WebSocket实例
    _socketStatus = SocketStatus.SocketStatusConnected;
    onOpen!();
    // 接收消息
    print("try to listen\n");
    var mod=_webSocket?.stream.listen((data){
      print("okkkk\n");
        webSocketOnMessage(data);
        onError: webSocketOnError;
        onDone: webSocketOnDone;
        });
    if(mod!=null)
    print("listen ok\n");
  }

  /// WebSocket接收消息回调
  webSocketOnMessage(data) {
    onMessage!(data);
  }

  /// WebSocket关闭连接回调
  webSocketOnDone() {
    print('closeddd');
  }

  /// WebSocket连接错误回调
  webSocketOnError(e) {
    WebSocketChannelException ex = e;
    _socketStatus = SocketStatus.SocketStatusFailed;
    onError!(ex.message);
    closeSocket();
  }

  /// 关闭WebSocket
  void closeSocket() {
    if (_webSocket != null) {
      print('WebSocket连接关闭');
      _webSocket?.sink.close();
      _socketStatus = SocketStatus.SocketStatusClosed;
    }
  }

  /// 发送WebSocket消息
  void sendMessage(message) {
    if (_webSocket != null) {
      switch (_socketStatus) {
        case SocketStatus.SocketStatusConnected:
          _webSocket?.sink.add(message);
          print('发送中：' + message);
          break;
        case SocketStatus.SocketStatusClosed:
          print('连接已关闭');
          break;
        case SocketStatus.SocketStatusFailed:
          print('发送失败');
          break;
        default:
          break;
      }
    }
  }
}

IO.Socket ?channel;

@override
void initState() {
  //super.initState();
  _listenWebSocket();
}

void _listenWebSocket() async {
  // 构建请求头，可以放一些cookie等信息，这里加上了origin，因为服务端有origin校验
  Map<String, dynamic> headers = new Map();
  headers['origin'] = 'http://127.0.0.1:7001';
  // 建立websocket链接
  // 链接的书写规范，schame://host:port/namespace, 这里socket_io_client在处理链接时候会把path和后面的query参数都作为namespace来处理，所以如果我们的namespace是/的话，就直接使用http://host/
  channel = IO.io('ws://123.249.9.132:443/'/*, <String, dynamic>{
    // 请求的path
    'path': '/ws',
    // 构造的header放这里
    'extraHeaders': headers,
    // 查询参数，扔这里
    'query': {
      'EIO': 3,
      'transport': 'websocket'
    },
    // 说明需要升级成websocket链接
    'transports': ['websocket'],
  }*/);

  // 链接建立成功之后，可以发送数据到socket.io的后端了
  channel?.on('connect', (_) {
    print('connect');
    // 发送消息和回调函数给socket.io服务端，在服务端可以直接获取到该方法，然后调用
    /*channel?.emitWithAck('exchange', '11111', ack: (data) {
      print('ack $data') ;
      if (data != null) {
        print('from server $data');
      } else {
        print("Null") ;
      }
    });*/
  });
  // 链接建立失败时调用
  channel?.on('error', (data){
    print('error');
    print(data);
  });
  // 链接出错时调用
  channel?.on("connect_error", (data) => print('connect_error: '));
  // 链接断开时调用
  channel?.on('disconnect', (_) => print('disconnect======'));
  // 链接关闭时调用
  channel?.on('close', (_) => print('close===='));
  // 服务端emit一个message的事件时，可以直接监听到
  channel?.on('message', (data) {
    print('onmessage');
    print(data);
  });
}

// 关闭websocket链接，避免内存占用
@override
void dispose() {
  //super.dispose();
  print('close');
  channel?.close();
}*/


Socket ?socket;
void  Login(Uint8List msg) async
{
  socket = await Socket.connect('123.249.9.132', 443);
  print('try to connect...');

  // listen to the received data event stream
  socket?.listen((List<int> reply) {
    msghandle(reply);
  });
  // send hello
  socket?.add(msg);
  heartbeat();
}

void  Register(Uint8List msg) async
{
  socket = await Socket.connect('123.249.9.132', 443);
  print('try to connect...');

  // listen to the received data event stream
  socket?.listen((List<int> reply) {
    msghandle(reply);
  });
  // send hello
  socket?.add(msg);
  heartbeat();
}

void SendRequest(Uint8List msg) async
{
  socket?.add(msg);
}

void heartbeat() async
{
  /*await Future.delayed(Duration(seconds: 5));
  socket?.close();
  print("connect close");
  //弹窗，标题：连接已中断，内容：是否重新连接？，附带两个按钮，对应重连和取消
  */
}


msghandle(List<int> reply)
{
  print(reply);
  int s1=reply[0],s2=reply[1];
  List<int> handlereply=[];
  for(int i=2;i<reply.length;i++)
    handlereply.add(reply[i]);
  print(handlereply);
  if(s1==97&&s2==97){
    var msg=user_login_reply.fromBuffer(handlereply);
    LoginHandle(msg);
  }
  else if(s1==97&&s2==98){
    var msg=user_register_reply.fromBuffer(handlereply);
    RegisterHandle(msg);
  }
}

LoginHandle(user_login_reply msg)
{
  print(msg);
  if(msg.issuccess)
  {
    print("login success");
    UserMsg.UserId=int.parse(msg.msg[0]);
    UserMsg.UserName=msg.msg[1];
    print(UserMsg.UserAccount);
    print(UserMsg.UserName);
    print(UserMsg.UserId);
    //跳转主界面
    Get.toNamed('/home');
  }
  else
  {
    print("login failed");
    //失败弹窗
    Get.defaultDialog(
        title: "提示",
        titlePadding: EdgeInsets.all(10),
        titleStyle: TextStyle(color: Colors.red),
        middleText: "登录失败",
        middleTextStyle: TextStyle(color: Colors.blue)
    );


  }
  //return "";
}

RegisterHandle(user_register_reply msg)
{
  if(msg.issuccess)
  {
    print("register success");
    //跳转主界面
    Get.offNamed('/home');
  }
  else
  {
    print("register failed");
    //失败弹窗,账号已存在
    Get.defaultDialog(
        title: "提示",
        titlePadding: EdgeInsets.all(10),
        titleStyle: TextStyle(color: Colors.red),
        middleText: "账号已存在",
        middleTextStyle: TextStyle(color: Colors.blue)
    );
  }
  //return "";
}

