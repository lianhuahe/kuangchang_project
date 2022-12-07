import 'package:kuangchang_app/pages/home/tab_index/info/item_widget.dart';

import 'data.dart';
import 'package:flutter/material.dart';

class DealInfoPage extends StatelessWidget {

  final List<InfoItem> datalist;

  const DealInfoPage({Key? key, this.datalist = infoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      // 内部页面使用CustomScrollView来实现滚动效果
      child: CustomScrollView(slivers: <Widget>[

        // 放置一个固定的顶部的标题栏
        /*SliverPersistentHeader(
        pinned: true,
        delegate: _SliverAppBarDelegate(
            maxHeight: 30,
            minHeight: 30,
            child:
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(5),
              height: 30,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '综合',
                        style: TextStyle(color: Colors.orange),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Text(
                    '销量',
                    style: TextStyle(color: Colors.black),
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '筛选 ',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.filter_alt_rounded,
                        color: Colors.black,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            )
        ),
      ),*/






        // 列表内容，使用SliverList实现
        SliverList(
          delegate:
          SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              // 每条内容的布局Item
              child: Column(
                  children: datalist
                      .map((item) =>ItemWidget(item))
                      .toList()
              )
            );
          },
              // 定义了6条Item数据
              childCount: 1),
        )
      ]),
    );


  }
}


// SliverPersistentHeader的SliverPersistentHeaderDelegate实现
class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
