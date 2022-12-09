import 'package:flutter/material.dart';
import 'package:kuangchang_app/widgets/common_image.dart';

import 'function_button_data.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;

  const FunctionButtonWidget(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        data.onTapHandle(context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 30.0),
        width: MediaQuery.of(context).size.width * 0.15,
        child: Column(
          children: <Widget>[CommonImage(data.imageUri), Text(data.title)],
        ),
      ),
    );
  }
}
