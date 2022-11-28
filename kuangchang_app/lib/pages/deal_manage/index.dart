import 'package:flutter/material.dart';
import 'package:myapp/pages/home/tab_index/info/item_widget.dart';
import 'package:myapp/pages/home/tab_index/info/data.dart';
import 'package:myapp/widgets/common_floating_action_button.dart';
class DealManagePage extends StatelessWidget {
  final List<InfoItem> datalist;
  const DealManagePage({Key? key, this.datalist= infoData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        initialIndex: 0,
        child:Scaffold(
          resizeToAvoidBottomInset: false,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: CommonFloatingActionButton(title: '发布悬赏', onTap: (){Navigator.pushNamed(context,'rewardAdd');}),
          appBar: AppBar(
            centerTitle: true,
            title: Text('交易管理',),
            bottom: TabBar(tabs: <Widget>[
              Tab(text: '已交易',),
              Tab(text: '我的悬赏',)
            ],),
          ),
          body: TabBarView(
            children:<Widget> [
              ListView(children: datalist
                  .map((item) =>ItemWidget(item))
                  .toList(),),
              ListView(children: datalist
                  .map((item) =>ItemWidget(item))
                  .toList(),),
            ],
          ),
        )
    );
  }
}
