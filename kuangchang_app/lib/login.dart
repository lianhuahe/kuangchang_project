import 'package:flutter/material.dart';

TextEditingController _phone = TextEditingController(); //监听器，监听用户名文本框内容
TextEditingController _pass = TextEditingController(); //监听器，监听密码文本框内容

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = false; //用一个变量来控制密码显示状态

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: Column(
        //竖向布局上放widgets
        children: [
          TextField(
            //账号文本框
            controller: _phone, //关联监控器
            decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
          ),
          TextField(
            //密码文本框
            controller: _pass, //关联监控器
            obscureText: !showPassword, //密码显示隐藏
            decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                suffixIcon: IconButton(
                  //suffixIcon：后缀小图标的扩展
                  icon: Icon(
                    showPassword
                        ? Icons.visibility_off
                        : Icons.visibility, //用三元运算符来 切换图标类型和密码显示状态
                  ),
                  onPressed: () {  //点击密码控制图标事件
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                )),
          ),
          ElevatedButton(
            //登录的按钮
            //点击登录后的事件
              onPressed: () {
                print(_phone.text); //打印用户名和密码 用来测试实时账号，密码对不对
                print(_pass.text);

                _pass.clear();
              },
              child: Text('登录')),
          Row(
            //横向布局
            mainAxisAlignment: MainAxisAlignment.center, //居中
            children: [
              Text('还没有账号?'),
              TextButton(
                // 一个注册按钮
                  onPressed: () {
                    //Navigator.pushNamed(context, 'register');
                    //跳转到注册界面
                  },
                  child: Text('去注册~~'))
            ],
          )
        ],
      ),
    );
  }
}
