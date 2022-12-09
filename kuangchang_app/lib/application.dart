import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuangchang_app/pages/news/news_page.dart';
import 'package:kuangchang_app/pages/reward_add/index.dart';
import 'pages/goods_detail/index.dart';
import 'pages/home/tab_index/topnavigation.dart';
import 'pages/register.dart';
import 'pages/login.dart';
import 'pages/home/index.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginPage()),
        GetPage(name: '/home', page: () => HomePage(),),
        GetPage(name: '/register', page: () => RegisterPage(),),
        GetPage(name: '/topnavigation', page: () => TopnavigationPage(),),
        GetPage(name: '/rewardAdd', page: () => RewardAddPage(),),
        GetPage(name: '/goodsDetail/:goodsId', page: () =>GoodsDetailPage(),),
        GetPage(name: '/news', page: () => NewsPage(),),
      ],
    );
  }
}
