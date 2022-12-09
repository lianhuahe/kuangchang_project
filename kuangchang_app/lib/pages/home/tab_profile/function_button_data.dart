import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class FunctionButtonItem {
  final String imageUri;
  final String title;
  final Function onTapHandle;

  FunctionButtonItem(this.imageUri, this.title, this.onTapHandle);
}

final List<FunctionButtonItem> list = [
  FunctionButtonItem('image/home_xs.png', '悬赏', (context) {
    Navigator.pushNamed(context, 'rewardManage');
  }),
  FunctionButtonItem('image/home_jy.png', '交易', (context) {
    Navigator.pushNamed(context, 'tradeManage');
  }),
  FunctionButtonItem('image/home_jy.png', '订单', (context) {
    Navigator.pushNamed(context, 'orderManage');
  }),
  FunctionButtonItem('image/home_xs.png', '发布悬赏', (context) {
    Navigator.pushNamed(context, 'rewardManage');
  }),
  FunctionButtonItem('image/home_jy.png', '发布交易', (context) {
    Navigator.pushNamed(context, 'rewardManage');
  }),
];
