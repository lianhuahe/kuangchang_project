import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';
import '../../protofile/loginproto/login.pb.dart';
import '../../server_connection.dart';
import '../../user_msg.dart';

//用户名输入框的焦点控制
FocusNode _userNameFocusNode = new FocusNode();
FocusNode _passwordFocusNode = new FocusNode();

TextEditingController _userNameController =
    TextEditingController(); //监听器，监听用户名文本框内容
TextEditingController _passwordController =
    TextEditingController(); //监听器，监听密码文本框内容

//Stream 更新操作控制器
StreamController<String> _userNameStream = new StreamController();
StreamController<String> _userPasswordStream = new StreamController();

//抖动动画控制器
ShakeAnimationController _userNameAnimation = new ShakeAnimationController();
ShakeAnimationController _userPasswordAnimation = new ShakeAnimationController();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
/*//Stream 更新操作控制器
  StreamController<String> _userNameStream = new StreamController();
  StreamController<String> _userPasswordStream = new StreamController();*/

  bool showPassword = false; //用一个变量来控制密码显示状态

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        hindKeyBoarder();
      },
     child: (
         Scaffold(
         appBar: AppBar(
        title: Text("登录"),
        centerTitle: true,
      ),

      //登录页面的主体
      body: Container(
        margin: EdgeInsets.all(30.0),
        //线性布局
        child: Column(
          children: [
            //用户名输入框
            buildUserNameWidget(),
            SizedBox(
              height: 20,
            ),
            //用户密码输入框
            buildUserPasswordWidget(),
            SizedBox(
              height: 40,
            ),
            //登录按钮
            Container(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(
                child: Text("登录"),
                onPressed: () {

                       if(checkUserName()&&checkUserPassword())
                         {
                            user_login_request request=user_login_request.create();
                            request.account=_userNameController.text;
                            request.password=_passwordController.text;
                            var msg=request.writeToBuffer();
                            print(msg);
                            Login(msg);
                            UserMsg.UserAccount=_userNameController.text;
                              }
                       else{
                         Get.defaultDialog(
                             title: "提示",
                             titlePadding: EdgeInsets.all(10),
                             titleStyle: TextStyle(color: Colors.red),
                             middleText: "登录失败",
                             middleTextStyle: TextStyle(color: Colors.blue)
                         );
                       }
                },
              ),
            ),
            Row(
              //横向布局
              mainAxisAlignment: MainAxisAlignment.center, //居中
              children: [
                Text('还没有账号?'),
                TextButton(
                  // 一个注册按钮
                    onPressed: () {
                      Get.toNamed('/register');
                      print('login');
                      //跳转到注册界面
                    },
                    child: Text('去注册~~'))
              ],
            ),
          ],
        ),
      ),
      )
     )
    );
  }
}


void hindKeyBoarder() {
  //输入框失去焦点
  _userNameFocusNode.unfocus();
  _passwordFocusNode.unfocus();

  //隐藏键盘
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}



StreamBuilder<String> buildUserNameWidget() {
  return StreamBuilder<String>(
      stream: _userNameStream.stream,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return ShakeAnimationWidget(
            //微左右的抖动
            shakeAnimationType: ShakeAnimationType.LeftRightShake,
            //设置不开启抖动
            isForward: false,
            //抖动控制器
            shakeAnimationController: _userNameAnimation,
            child: new TextField(
              //焦点控制
              focusNode: _userNameFocusNode,
              //文本控制器
              controller: _userNameController,
              //键盘回车键点击回调
                //边框样式设置
                decoration:
                InputDecoration(
                  //红色的错误提示文本
                  errorText: snapshot.data,
                  labelText: "账号",
                  hintText: '请输入6~26个字母，数字，下划线组成的账号',
                  hintStyle: TextStyle(fontSize: 14.0),
                  //设置上下左右 都有边框
                  //设置四个角的弧度
                  border: OutlineInputBorder(
                    //设置边框四个角的弧度
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                )

            ));
      }
      );
}

StreamBuilder<String> buildUserPasswordWidget() {
  return StreamBuilder<String>(
    stream: _userPasswordStream.stream,
    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      return ShakeAnimationWidget(
        //微左右的抖动
        shakeAnimationType: ShakeAnimationType.LeftRightShake,
        //设置不开启抖动
        isForward: false,
        //抖动控制器
        shakeAnimationController: _userPasswordAnimation,
        child: new TextField(
          focusNode: _passwordFocusNode,
          controller: _passwordController,
          //隐藏输入的文本
          obscureText: true,
          //最大可输入1行
          maxLines: 1,
          //边框样式设置
          decoration: InputDecoration(
            labelText: "密码",
            hintText: '请输入6~26个字母，数字，下划线组成的密码',
            hintStyle: TextStyle(fontSize: 14.0),
            errorText: snapshot.data,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      );
    },
  );
}


bool checkUserName() {
  //获取输入框中的输入文本
  String userName = _userNameController.text;
  if (userName.length < 6||userName.length > 26) {
    if(userName=='admin') return true;
    //Stream 事件流更新提示文案
    _userNameStream.add("账号长度应在6到26之间");
    //抖动动画开启
    _userNameAnimation.start();
    return false;
  }
  else if (userName.contains(new RegExp(r'[^\w]'))) {
    //Stream 事件流更新提示文案
    _userNameStream.add("请输入规范账号");
    //抖动动画开启
    _userNameAnimation.start();
    return false;
  }

  else {
    //清除错误提示
    //_userNameStream.add("");
    return true;
  }
}

bool checkUserPassword() {
  String userPassrowe = _passwordController.text;
  if (userPassrowe.length < 6||userPassrowe.length > 26) {
    //Stream 事件流更新提示文案
    _userPasswordStream.add("密码长度应在6到26之间");
    //抖动动画开启
    _userPasswordAnimation.start();
    return false;
  }
  else if (userPassrowe.contains(new RegExp(r'[^\w]'))) {
    //Stream 事件流更新提示文案
    _userPasswordStream.add("请输入规范密码");
    //抖动动画开启
    _userPasswordAnimation.start();
    return false;
  }

  else {
    //清除错误提示
    //_userPasswordStream.add("");
    return true;
  }

}
