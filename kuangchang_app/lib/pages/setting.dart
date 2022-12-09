import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('设置'),
    ),
    body: ListView(
      children: <Widget>[
      ElevatedButton(
        onPressed: (){
          Get.toNamed('/');    //跳回到登录页面
        },
        child: Text('退出登录'),)
      ],
     )
    );
  }
}
