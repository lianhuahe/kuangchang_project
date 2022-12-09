import 'package:flutter/material.dart';

import 'function_button.dart';
import 'header.dart';

class TabProfilePage extends StatelessWidget {
  const TabProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed('setting');
              },
              icon: Icon(Icons.settings),)
        ],
      ),
      body: ListView(
        children: <Widget>[
          Header(),
          FunctionButton(),
       // Text('内容区域')   //暂时不需要使用该板块
      ],),
    );
  }
}
