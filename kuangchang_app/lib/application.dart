import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'routes.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter(); // 定义路由
    Routes.configureRoutes(router); //用 configureRoutes 配置路由

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: router.generator, // 把 router 关联到 MaterialApp
    );
  }
}
