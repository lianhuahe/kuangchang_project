import 'package:flutter/material.dart';
import 'news_page.dart';

class SwitchNews extends StatefulWidget {
  @override
  _SwitchNews createState() => _SwitchNews();
}

class _SwitchNews extends State<SwitchNews> {

  final List<Widget> tabViews = [
    NewsPage(),
    NewsPage(),
  ];
  @override

  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: 4,
      initialIndex: 1, //默认选中
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                child: TabBar(
                  tabs: <Widget>[
                    Tab(text: "交易"),
                    Tab(text: "悬赏"),
                  ],
                ),
              )
            ],
          ),
        ),

        body: TabBarView(
          children: tabViews,
        ),
      ),
    );
  }
}