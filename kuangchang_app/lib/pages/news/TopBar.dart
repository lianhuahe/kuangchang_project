import 'package:flutter/material.dart';
import 'switchNews.dart';
import 'news_page.dart';

class topBar extends StatefulWidget {
  @override
  _topBar createState() => _topBar();
}

class _topBar extends State<topBar> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const _AppBar(),
      body: SwitchNews(),
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
      title: const Text('消息'),//某某界面
      centerTitle: false,
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
