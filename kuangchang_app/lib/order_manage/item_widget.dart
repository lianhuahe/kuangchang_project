import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';

import 'data.dart';


class ItemWidget_S extends StatelessWidget {
  final InfoItem_S? data;

  const ItemWidget_S(this.data,{super.key, required });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { //未定进入什么界面
      },
      child: Container(
          padding: EdgeInsets.all(5),
          child: Row(children: <Widget>[
            // 圆角图片
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                data?.imageUrl ?? '',
                height: 108,
              ),
            ),
            // 用SizedBox增加间距
            SizedBox(
              width: 10,
            ),
            // 右侧的商品描述信息
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //放在竖直方向的开始位置
              children: <Widget>[
                SizedBox(
                  height: 6,
                ),
                Text(
                  data?.Itemtitle ?? '',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  maxLines: 2,
                  softWrap: true,
                ),

                SizedBox(
                  height: 3,
                ),
                // 商品特征属性
                Text(
                  '商家:${data?.Uername}',
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
                SizedBox(
                  height: 3,
                ),

                Text(
                    '已购买',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                ),

                SizedBox(
                  height: 2,
                ),


              ],
            )
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  '￥',
                  style: TextStyle(color: Colors.orange, fontSize: 12),
                ),
                Text(
                  '${data?.price}',
                  style: TextStyle(color: Colors.orange, fontSize: 20),
                ),
              ],
            ),
          ])
      ),
    );
  }
}