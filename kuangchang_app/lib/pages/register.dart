import 'package:flutter/material.dart';

TextEditingController _phone = TextEditingController(); //监听器，监听用户名文本框内容
TextEditingController _pass = TextEditingController(); //监听器，监听密码文本框内容
TextEditingController _repass = TextEditingController(); //监听器，监听密码文本框内容
String? error_message = '6666';

final mySnackBar = SnackBar(
  content: Text('我是SnackBar'),
  backgroundColor: Colors.black26,
  duration: Duration(seconds: 1),
  behavior: SnackBarBehavior.floating,

);

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool showPassword = false; //用一个变量来控制密码显示状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('注册'),
        ),
        body: Column(
            //竖向布局上放widgets
            children: [
              TextField(
                //账号文本框
                controller: _phone, //关联监控器
                decoration:
                    InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
              ),
              TextField(
                //密码文本框
                controller: _pass, //关联监控器

                decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                ),
              ),
              TextField(
                controller: _repass,
                decoration:
                    InputDecoration(labelText: '请确认密码', hintText: '请再次输入密码'),
              ),
              ElevatedButton(
                  //注册的按钮
                  //点击注册后的事件
                  onPressed: () {
                    // if(_phone == null)

                  },
                  child: Text('注册')),
              Row(
                //横向布局
                mainAxisAlignment: MainAxisAlignment.center, //居中
                children: [
                  Text('已有账号?'),
                  TextButton(
                      // 一个注册按钮
                      onPressed: () {
                        Navigator.pop(context, 'login');
                        //跳转到注册界面
                      },
                      child: Text('去登录~~'))
                ],
              ),
            ]));
  }
}
