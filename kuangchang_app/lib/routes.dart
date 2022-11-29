import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:kuangchang_app/pages/home/tab_index/topnavigation.dart';
import 'package:kuangchang_app/pages/login.dart';
import 'package:kuangchang_app/pages/reward_add/index.dart';
import 'pages/home/index.dart';

import 'pages/not_found.dart';
import 'pages/register.dart';
import 'pages/goods_detail/index.dart';

class Routes {
  //1.路由名称
  static String home = '/home';
  static String login = '/';
  static String goodsDetail = '/goodsDetail/:goodsId';
  static String register = '/register';
  static String  topnavigation = '/topnavigation';
  static String rewardAdd = '/rewardAdd';

  //2.路由处理函数
  static Handler _homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return HomePage();
  });

  static Handler _loginHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return LoginPage();
  });

  static Handler _registerHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return RegisterPage();
      });

  static Handler _notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return NotFoundPage();
  });

  static Handler _goodsDetailHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    return GoodsDetailPage(

    );
  });

  static Handler _topnavigationPage = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return TopnavigationPage();
      });

  static Handler _rewardAddHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return RewardAddPage();
      });

  //3.编写 configureRoutes 关联路由名称和处理函数
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(goodsDetail, handler: _goodsDetailHandler);
    router.define(register, handler: _registerHandler);
    router.notFoundHandler = _notFoundHandler;
    router.define(topnavigation, handler: _topnavigationPage);
    router.define(rewardAdd, handler: _rewardAddHandler);
  }
}
