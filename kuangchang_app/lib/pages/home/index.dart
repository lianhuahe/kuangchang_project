import 'package:flutter/material.dart';
import 'package:kuangchang_app/pages/home/tab_index/topnavigation.dart';
import 'package:kuangchang_app/pages/login.dart';

import '../deal_manage/index.dart';
import '../news/news_page.dart';
import 'tab_profile/index.dart';
//4个tab内容区
List<Widget> tabViewList=
[
  TopnavigationPage(),
  LoginPage()
];
//四个软件底下导航栏tab
List <BottomNavigationBarItem> barItemList=[
  BottomNavigationBarItem( icon: Icon(Icons.home), label: '主页',),
  BottomNavigationBarItem( icon: Icon(Icons.search), label: '搜索',),
  BottomNavigationBarItem( icon: Icon(Icons.view_headline), label: '产品',),
  BottomNavigationBarItem( icon: Icon(Icons.account_circle), label: '我的',)
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    TopnavigationPage(),
    NewsPage(),
    TabProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


