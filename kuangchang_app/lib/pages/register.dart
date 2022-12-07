import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';
import '../../protofile/registerproto/register.pb.dart';
import '../../server_connection.dart';
import '../../user_msg.dart';

//用户名输入框的焦点控制
FocusNode _AccountFocusNode = new FocusNode();
FocusNode _userNameFocusNode = new FocusNode();
FocusNode _passwordFocusNode = new FocusNode();
FocusNode _affirmFocusNode = new FocusNode();

TextEditingController _AccountController =
TextEditingController();
TextEditingController _userNameController =
TextEditingController(); //监听器，监听用户名文本框内容
TextEditingController _passwordController =
TextEditingController(); //监听器，监听密码文本框内容
TextEditingController _affirmdController =
TextEditingController();



//Stream 更新操作控制器
StreamController<String> _AccountStream = StreamController.broadcast();
StreamController<String> _userNameStream =  StreamController.broadcast();
StreamController<String> _userPasswordStream = StreamController.broadcast();
StreamController<String> _affirmPasswordStream = StreamController.broadcast();
//抖动动画控制器
ShakeAnimationController _userAccountAnimation = new ShakeAnimationController();
ShakeAnimationController _userNameAnimation = new ShakeAnimationController();
ShakeAnimationController _userPasswordAnimation = new ShakeAnimationController();
ShakeAnimationController _affirmPasswordAnimation = new ShakeAnimationController();

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                resizeToAvoidBottomInset:false,
                appBar: AppBar(
                title: Text("注册"),
                centerTitle: true,
                  automaticallyImplyLeading: true,
              ),

              //登录页面的主体
              body: Container(
                margin: EdgeInsets.all(30.0),
                //线性布局
                child: Column(
                  children: [
                    //账号输入框
                    buildAccountNumberWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    //用户名输入框
                    buildUserNameWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    //用户密码输入框
                    buildUserPasswordWidget(),
                    SizedBox(
                      height: 20,
                    ),
                    //确认密码框
                    buildAffirmPasswordWidget(),
                    SizedBox(
                      height: 50,
                    ),
                    //登录按钮
                    Container(
                      width: double.infinity,
                      height: 40,
                      child: ElevatedButton(
                        child: Text("注册"),
                        onPressed: () {
                          if(checkAccount()&&checkUserName()&&checkUserPassword()&&checkaffirmPassword())
                         { var request=user_register_request.create();
                          request.name=_userNameController.text;
                          request.accout=_AccountController.text;
                          request.password=_passwordController.text;
                          var msg=request.writeToBuffer();
                          Uint8List registerrequest=new Uint8List(msg.length+2);
                          registerrequest[0]=97;
                          registerrequest[1]=98;
                          for(int i=0;i<msg.length;i++)
                            registerrequest[i+2]=msg[i];
                          Register(registerrequest);
                          UserMsg.UserAccount=_userNameController.text;}
                          else{
                            Get.defaultDialog(
                                title: "提示",
                                titlePadding: EdgeInsets.all(10),
                                titleStyle: TextStyle(color: Colors.red),
                                middleText: "注册失败",
                                middleTextStyle: TextStyle(color: Colors.blue)
                            );
                          }
                          //checkLoginFunction();点击登录验证密码正确函数，还没有完成。
                          //String userName =
                          // String userPassrowe =
                        },
                      ),
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
  _AccountFocusNode.unfocus();
  _userNameFocusNode.unfocus();
  _passwordFocusNode.unfocus();
  _affirmFocusNode.unfocus();

  //隐藏键盘
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}


StreamBuilder<String> buildAccountNumberWidget() {
  return StreamBuilder<String>(
      stream: _AccountStream.stream,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return ShakeAnimationWidget(
          //微左右的抖动
            shakeAnimationType: ShakeAnimationType.LeftRightShake,
            //设置不开启抖动
            isForward: false,
            //抖动控制器
            shakeAnimationController: _userAccountAnimation,
            child:  TextField(
              //焦点控制
                focusNode: _AccountFocusNode,
                //文本控制器
                controller: _AccountController,
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
            child:  TextField(
              //焦点控制
                focusNode: _userNameFocusNode,
                //文本控制器
                controller: _userNameController,
                //边框样式设置
                decoration:
                InputDecoration(
                  //红色的错误提示文本
                  errorText: snapshot.data,
                  labelText: "用户名",
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
        child:  TextField(
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


StreamBuilder<String> buildAffirmPasswordWidget() {
  return StreamBuilder<String>(
    stream: _affirmPasswordStream.stream,
    builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      return ShakeAnimationWidget(
        //微左右的抖动
        shakeAnimationType: ShakeAnimationType.LeftRightShake,
        //设置不开启抖动
        isForward: false,
        //抖动控制器
        shakeAnimationController:  _affirmPasswordAnimation,
        child:  TextField(
          focusNode: _affirmFocusNode,
          controller: _affirmdController,
          //隐藏输入的文本
          obscureText: true,
          //最大可输入1行
          maxLines: 1,
          //边框样式设置
          decoration: InputDecoration(
            labelText: "确认密码",
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

bool checkAccount() {
  //获取输入框中的输入文本
  String account = _AccountController.text;
  if (account.length<6||account.length>26) {
    //Stream 事件流更新提示文案
    _AccountStream.add("账号长度应在6到26之间");
    //抖动动画开启
    _userAccountAnimation.start();
    return false;
  }
  else if(account.contains(new RegExp(r'[^\w]'))){
    _AccountStream.add("请输入规范的账户名");
    _userAccountAnimation.start();
    return false;
  }
  else {
    //清除错误提示
    //_AccountStream.add("");
    return true;
  }
}






bool checkUserName() {
  //获取输入框中的输入文本
  String userName = _userNameController.text;
  if (userName.length < 1||userName.length>16) {
    //Stream 事件流更新提示文案
    _userNameStream.add("用户名长度应在1到16之间");
    //抖动动画开启
    _userNameAnimation.start();
    return false;
  } else {
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

bool checkaffirmPassword() {
  String userPassword = _passwordController.text;
  String affirmPassword = _affirmdController.text;
  if (affirmPassword!=userPassword) {
    _affirmPasswordStream.add("密码不一致");
    _affirmPasswordAnimation.start();
    return false;
  } else {
    //_affirmPasswordStream.add("");
    return true;
  }
}