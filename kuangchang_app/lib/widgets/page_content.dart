import 'package:flutter/material.dart';
import 'package:get/get.dart';



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
              onPressed: (){Get.toNamed("/home");},
              child: Text('home'),
          ),

          ElevatedButton(
            onPressed: (){Get.toNamed('/login');},
            child: Text('login'),
          ),

          ElevatedButton(
            onPressed: (){Get.toNamed('/awdqwar');},
            child: Text('不存在页面'),
          ),

          ElevatedButton(
            onPressed: (){Get.toNamed('/room/2222');},
            child: Text('物品详情'),
          ),

          ElevatedButton(
            onPressed: (){Get.toNamed('/register');},
            child: Text('register'),
          ),

          ElevatedButton(
            onPressed: (){Get.toNamed('/topnavigation');},
            child: Text('topnavigation'),
          )
        ],
      )
    );
  }
}
