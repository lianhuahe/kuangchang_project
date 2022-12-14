import 'package:flutter/material.dart';

class CommonFormItem extends StatelessWidget {
  final String label;
  final Widget Function(BuildContext context)? contentBuilder;
  final Widget? suffix;
  final String suffixText;
  final String hintText;
  final ValueChanged? onChanged;
  final TextEditingController controller;
  const CommonFormItem({Key? key, required this.label, this.contentBuilder, this.suffix, required this.suffixText, required this.hintText,this.onChanged, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 14.0,right: 14.0),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0,color: Colors.black45))//底线
        ),
      child: Row(
        children: <Widget>[
          Container(
            width: 100.0,
            child: Text(label,style: TextStyle(fontSize: 16.0,color: Colors.black),),


          ),
          contentBuilder!=null?
          contentBuilder!(context):
          Expanded(child: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: hintText,

            ),
          )),
          if(suffix!=null) suffix!,
          if(suffix==null&&suffixText!=null) Text(suffixText)

        ],
      ),
    );
  }
}
