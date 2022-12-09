import 'package:flutter/material.dart';

import 'function_button_data.dart';

import 'function_button_widget.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Wrap(
        spacing: 80.0,
        runSpacing: 5.0,
        children: list.map((item) => FunctionButtonWidget(item)).toList(),
      ),
    );
  }
}
