import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kuangchang_app/pages/home/tab_index/info/dealindex.dart';
import 'package:kuangchang_app/widgets/head_portrait.dart';
import 'package:kuangchang_app/widgets/search_bar/index.dart';






class TopnavigationPage extends StatelessWidget {
  const TopnavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
              leading: HeadImage(),
              primary: true,//是否设置内容避开状态栏
              elevation: 2,//设置标题栏下面阴影的高度
              automaticallyImplyLeading: true,
              title: SearchBar(
                  onCancel: true,
                onSearch: (){Get.toNamed('/notfound');},
              ),
              backgroundColor: Colors.white,

          bottom:  TabBar(
            tabs: <Widget>[
              Tab(

               child: Text('交易',style: TextStyle(color: Colors.black),),

            ),

              Tab(
                child: Text('悬赏',style: TextStyle(color: Colors.black),),
              ),
              Tab(
                child: Text('购物车',style: TextStyle(color: Colors.black),),
              ),
            ],
          ),
        ),


          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            mini: true,
            elevation: 1,
            highlightElevation: 2,
            child: Icon(
              Icons.vertical_align_top,
              color: Colors.black,
            ),
          ),



        body: TabBarView(
          children: <Widget>[
            Center(
              child: DealInfoPage(),
            ),
            Center(
              child: DealInfoPage(),
            ),
            Center(
              child: Text("It's sunny here"),
            ),
          ],
        ),
      ),
    );
  }
}



