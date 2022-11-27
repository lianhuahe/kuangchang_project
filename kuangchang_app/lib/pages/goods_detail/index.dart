import 'package:flutter/material.dart';
import 'package:myapp/pages/goods_detail/data.dart';
import 'package:myapp/widgets/CommonTitle.dart';
import 'package:myapp/widgets/common_swiper.dart';

class GoodsDetailPage extends StatefulWidget {
  const GoodsDetailPage({Key? key}) : super(key: key);

  @override
  State<GoodsDetailPage> createState() => _GoodsDetailPageState();
}

class _GoodsDetailPageState extends State<GoodsDetailPage> {
  bool showAllText = false;
  GoodsDetailData data = defaultData;
  @override
  void initState() {
    setState(() {
      data = defaultData;
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    if(data==null) return Container();
    bool showTextTool = data.subTitle.length>100;
    return Scaffold(
      appBar: AppBar(
          title: Text(data.title),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              CommonSwiper(images: data.goodsImgs,),
              CommonTitle(title: data.title),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(data.price.toString(),style: TextStyle(fontSize: 20.0,color: Colors.pink),),
                    Text('元',style: TextStyle(fontSize: 14.0,color: Colors.pink),),
                  ],
                ),
              ),
              Divider(
                thickness: 1.0,
                color: Colors.grey,
                indent: 10.0,
                endIndent: 10.0,
              ),
              CommonTitle(title: '物品概况'),
              Container(
                padding: EdgeInsets.only(left: 10.0,right: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(

                      data.subTitle ?? '暂无房屋概况',
                      maxLines: showAllText?null:5,
                    ),
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        showTextTool?
                            GestureDetector(
                              child: Row(
                                  children: [
                                    Text(showAllText?'收起':'展开'),
                                    Icon(showAllText?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down)
                                  ],
                            ),
                              onTap: (){
                                setState(() {
                                  showAllText =!showAllText;
                                });
                              },
                            )
                        :Container(),
                        Text('举报'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            height: 100,
            bottom: 0,
            child: Container(
              color: Colors.grey[200],
              child: Row(
                children: <Widget>[
                  Expanded(
                      child: GestureDetector(
                        onTap: (){},
                        child: Container(
                          height: 50.0,
                          decoration: BoxDecoration(color: Colors.cyan,borderRadius: BorderRadius.circular(6.0)),
                          child: Center(
                            child: Text('加入购物车'),
                          ),
                        ),
                      ),
                  ),
                  /*Container(
                    height: 50.0,
                    width: 40.0,
                    margin: EdgeInsets.all(10.0),
                  ),*/
                ],
              ),
            ),
          )
        ],

      ),
    );
  }
}

