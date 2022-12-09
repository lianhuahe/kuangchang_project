import 'package:flutter/material.dart';

import 'data.dart';
import 'item_widget.dart';


class OrderManagePage extends StatelessWidget {
  final List<InfoItem_S> datalist;

  const OrderManagePage({super.key, this.datalist = infoData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('订单详情'),
        ),
        body: Column(
            children: datalist
                .map((item) => ItemWidget_S(item))
                .toList()),
      ),
    );
  }
}
