import 'package:flutter/material.dart';
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import '../chat//chat_page.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true; // 保持底部切换状态不变

  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  new GlobalKey<RefreshIndicatorState>(); // 下拉刷新使用key 用于主动操作

  List list = [];

  Future<Null> _getData() {
    final Completer<Null> completer = new Completer<Null>();
    new Timer(Duration(seconds: 1), () {
      // 模拟加载
      setState(() {
        list.add("新加数据${list.length}");
      });
      // 完成刷新
      completer.complete(null);
    });
    return completer.future;
  }

  @override
  initState() {
    // 状态数据初始化
    super.initState();
    list.add('我是系统消息');
  }

  @override
  void dispose() {
    // 销毁
    super.dispose();
  }

  void _onTap(String type) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return new ChatPage();
    }));
  }

  //build:开始构造界面
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new RefreshIndicator(
        key: _refreshIndicatorKey,
        onRefresh: _getData, // onRefresh 参数是一个 Future<Null> 的回调
        child: new ListView.builder(
          // 这句是在list里面的内容不足一屏时，list可能会滑不动，加上就一直都可以滑动
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: this.list.length,
          itemBuilder: (_, int index) => _createItem(index),
        ),
      ),
    );
  }


  Widget _createItem_sys() {
    Widget widget;

    widget = Container(
        padding: EdgeInsets.only(left: 16, bottom: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.deepOrange[300]),
                child: Icon(
                  Icons.add_alert,
                  color: Colors.white,
                )),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 8),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(width: 0.2, color: Colors.black))),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "通知",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "啊吧啊吧",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey[700]),
                            ),
                            Text("3天前",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[700])),
                          ],
                        ),
                        onTap: () {
                          _onTap("");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));

    return widget;
  }

  Widget _createItem(int index) {
    Widget widget;

    if (index % 3 == 1) {
      return _createItem_sys();
    }
    widget = Container(
        padding: EdgeInsets.only(left: 8, bottom: 8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: GestureDetector(
                    onTap: (){ _onTap("我是数据"); },
                    child: Container(
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 8),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 0.2, color: Colors.black))),
                      child: Row(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 24,
                            backgroundImage: AssetImage('image/9ab516426a392a03f7f3af14d2588726a2.png'),
                            child: const SizedBox(
                              width: 48,
                              height: 48,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "玛卡巴卡",
                                  style: TextStyle(
                                      fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "下拉看看效果  ----我是内容我是内容我是内容我是内容我是内容",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                                Text("3天前",
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[700])),
                              ],
                            ),
                          ),
                          CachedNetworkImage(
                            width: 64,
                            height: 64,
                           // placeholder: new CircularProgressIndicator(),
                            imageUrl: 'https://auto.ironhorse.ru/wp-content/uploads/2013/05/Turbo-911-old.jpg',
                           // errorWidget: new Icon(Icons.error),
                          )
                        ],
                      ),
                    )))
          ],
        ));

    return widget;
  }
}

class Model {
  final String name;//昵称
  final String avatar;//头像
  final String goodsImage;//物品图片

  Model({
    required this.name,//昵称
    required this.avatar,//头像
    required this.goodsImage,//物品图片
  });
}