import 'package:flutter/material.dart';
import 'package:kuangchang_app/pages/home/tab_index/topnavigation.dart';


import '../news/news_page.dart';
import 'tab_profile/index.dart';
//三个软件底下导航栏tab
List <BottomNavigationBarItem> barItemList=[
  BottomNavigationBarItem( icon: Icon(Icons.home), label: '主页',),
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
            label: '主页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_headline),
            label: '聊天',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: '我的',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


