import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'message_model.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();

  final List<Model> _data = [
    Model(
      avatar: 'image/9ab516426a392a03f7f3af14d2588726a2.png',
      text: '1',
      isMyself: false,
    ),
  ];

  //build:从这步开始构造界面
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const _AppBar(),
      body: bodyView(),
    );
  }

  Widget bodyView() {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        // 点击其他地方的时候，让输入框失去焦点
        Focus.of(context).requestFocus(FocusNode());
      },
      child: SafeArea(
        child: Column(
          children: [
            goodsView(),//上方：商品？
            chatView(), // 中间：聊天内容显示
            inputView(),// 底部：输入框
          ],
        ),
      ),
    );
  }

  Widget goodsView(){
    List<Widget> _rows = [];
    _rows.add(
        CachedNetworkImage(
          width: 100,
          height: 80,
          //placeholder:  CircularProgressIndicator(),
          imageUrl: 'https://auto.ironhorse.ru/wp-content/uploads/2013/05/Turbo-911-old.jpg',
          //errorWidget:  Icon(Icons.error),
          fit: BoxFit.cover,
        )
    );
    _rows.add(
        Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("￥1000000.00",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500 ),),
                //Text("含运费10.00元",style: TextStyle(fontSize: 12,color: Colors.grey[600]),),
                Expanded(child: SizedBox(),),
                Text("交易前聊一聊",style: TextStyle(fontSize: 14,color: Colors.grey[800]),),
              ],
            )
        )
    );

    _rows.add(Expanded(child: SizedBox()));// 占位

    _rows.add(TextButton(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(Colors.white),
        backgroundColor: MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
      ),
      child: Text("同意购买"),
      onPressed: (){},
      /*点击跳转？ 商品/购买界面
      onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        //return new BuyPage(goodModel: null,);
      }));
    },*/
    ));

    return PreferredSize(
      preferredSize: Size.fromHeight(90),
      child: Container(
        height: 90,
        child: Row(children: _rows,),
        decoration: BoxDecoration(color: Colors.white,border: BorderDirectional(top: BorderSide(width: 0.2))),
      ),
    );
  }

  /// 聊天内容显示
  Widget chatView() {
    return Expanded(
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          itemCount: _data.length,
          itemBuilder: (context, index) {
            final model = _data.elementAt(index);
            return BubbleWidget(
              avatar: model.avatar,
              text: model.text,
              direction: model.isMyself
                  ? TextDirection.rtl
                  : TextDirection.ltr, // 那么这个时候默认值就没意义了
            );
          }),
    );
  }

  /// 最下方的输入框部分
  Widget inputView() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          // 左侧文字输入框
          Expanded(
            child: TextField(
              maxLines: null,
              controller: _controller,
              cursorColor: Colors.black,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                enabledBorder: outlineInputBorder,
                focusedBorder: outlineInputBorder,
              ),
            ),
          ),
          const SizedBox(width: 12),
          // 右侧发送文字的按钮
          ElevatedButton(
            onPressed: _onSend,
            child: const Text('发送'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  final outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(16),
  );

  Future<void> _onSend() async {
    final text =_controller.text;
    // 现在变成builder，把数据抽出来
    // TODO: 这里要发送到后端，是个Future，异步
    final model = Model(
      avatar: 'image/9ab516426a392a03f7f3af14d2588726ex.png',
      text: text,
      isMyself: true,
    );

    setState(() {
      _data.add(model);
    });

    _controller.clear();
  }
}

/// 聊天气泡
class BubbleWidget extends StatelessWidget {
  const BubbleWidget({
    Key? key,
    required this.avatar,
    required this.text,
    required this.direction,
  }) : super(key: key);

  final String avatar;
  final String text;

  /// 文字方向：ltr: left to right，
  /// rtl：自己的消息
  final TextDirection direction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        textDirection: direction,
        children: [
          CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage(avatar),
            child: const SizedBox(
              width: 48,
              height: 48,
            ),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(32),
              ),
              child: SelectableText(text),
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget with PreferredSizeWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      foregroundColor: Colors.black,
      leading: const BackButton(),
      title: const Text('玛卡巴卡'),//对方昵称
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class Model {
  final String avatar;
  final String text;
  final bool isMyself;

  Model({
    required this.avatar,
    required this.text,
    required this.isMyself,
  });
}

