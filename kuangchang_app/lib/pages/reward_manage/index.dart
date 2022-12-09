import 'package:flutter/material.dart';

import '../../order_manage/data.dart';
import '../../order_manage/item_widget.dart';


class RewardManagePage extends StatelessWidget {
  final List<InfoItem_S> datalist;

  const RewardManagePage({Key? key, this.datalist = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('悬赏管理'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: '已揭榜',
                ),
                Tab(
                  text: '未揭榜',
                )
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Column(
                  children: datalist
                      .map((item) => ItemWidget_S(item))
                      .toList()),
              Column(
                  children: datalist
                      .map((item) => ItemWidget_S(item))
                      .toList()),
            ],
          ),
        ));
  }
}
