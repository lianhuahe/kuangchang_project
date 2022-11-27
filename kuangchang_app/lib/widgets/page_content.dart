import 'package:flutter/material.dart';

import '../routes.dart';


class PageContent extends StatelessWidget {

  final String ?name;
  const  PageContent({Key? key,this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text('${name}'),

      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: (){Navigator.pushNamed(context,Routes.home);},
              child: Text(Routes.home),
          ),

          ElevatedButton(
            onPressed: (){Navigator.pushNamed(context,'/login');},
            child: Text(Routes.login),
          ),

          ElevatedButton(
            onPressed: (){Navigator.pushNamed(context,'/awdqwar');},
            child: Text('不存在页面'),
          ),

          ElevatedButton(
            onPressed: (){Navigator.pushNamed(context,'/room/2222');},
            child: Text('物品详情'),
          ),

          ElevatedButton(
            onPressed: (){Navigator.pushNamed(context,'/register');},
            child: Text(Routes.register),
          ),

          ElevatedButton(
            onPressed: (){Navigator.pushNamed(context,'/topnavigation');},
            child: Text('topnavigation'),
          )
        ],
      )
    );
  }
}
