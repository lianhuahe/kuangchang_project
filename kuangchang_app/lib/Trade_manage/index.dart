import 'package:flutter/material.dart';

import '../../order_manage/data.dart';
import '../../order_manage/item_widget.dart';


class TradeManagePage extends StatelessWidget {
  final List<InfoItem_S> datalist;

  const TradeManagePage({Key? key, this.datalist = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: Scaffold(
          appBar: AppBar(
            title: Text('交易管理'),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: '已交易',
                ),
                Tab(
                  text: '未交易',
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
