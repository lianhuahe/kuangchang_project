import 'package:flutter/material.dart';
import 'package:kuangchang_app/news/news_page.dart';
import './chat/chat_page.dart';

void main() => runApp(MyApp());//入口函数，MyApp()在runApp里面运行
//这部分代码基本是不变的

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: ChatPage(),
        ));
  }
}*/

class MyApp extends StatelessWidget {//MyApp就是上面入口函数运行所要创建的类
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: NewsPage(),
        ));
  }
}

/*模板
class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage>{
  @override
  Widget build(BuildContext context) {
    return null(
    );
  }
}*/