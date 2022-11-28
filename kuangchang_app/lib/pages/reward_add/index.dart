import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myapp/widgets/CommonTitle.dart';
import 'package:myapp/widgets/common_floating_action_button.dart';
import 'package:myapp/widgets/common_form_item.dart';
import 'package:myapp/widgets/common_image_picker.dart';

class RewardAddPage extends StatefulWidget {
  const RewardAddPage({Key? key}) : super(key: key);

  @override
  State<RewardAddPage> createState() => _RewardAddPageState();
}

class _RewardAddPageState extends State<RewardAddPage> {
  var titleController = TextEditingController();
  var descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('悬赏发布'),

      ),
      body: ListView(
        children: <Widget>[
          CommonTitle(title: '悬赏信息'),
          CommonFormItem(label: '价格',  suffixText: '元', hintText: '请输入价格', controller: TextEditingController()),
          CommonTitle(title: '悬赏图像'),
          CommonImagePicker(
              onChange: (List<File> files){},
          ),
          CommonTitle(title: '悬赏标题'),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入标题',
              ),
            ),
          ),
          CommonTitle(title: '悬赏描述'),
          Container(
            margin: EdgeInsets.only(bottom: 100.0),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: descController,
              maxLength: 10,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '请输入商品描述',
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: CommonFloatingActionButton(title: '提交',onTap: (){},),
    );
  }
}
