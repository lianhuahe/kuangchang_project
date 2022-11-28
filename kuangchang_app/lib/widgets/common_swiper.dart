import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

const List<String> defaultImages = [
       'https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-136217274.jpg',
       'https://tse1-mm.cn.bing.net/th/id/OIP-C.I9g3svv7D2oLEXXeHkGBTAHaE8?w=292&h=195&c=7&r=0&o=5&pid=1.7',
       'https://tse2-mm.cn.bing.net/th/id/OIP-C.ocJYWVcZ2hhZdxUi-qpJQwHaE6?w=276&h=183&c=7&r=0&o=5&pid=1.7',
];

var imageWidth = 750.0;
var imageHeight = 424.0;

class CommonSwiper extends StatelessWidget {
  final List<String> images;
  const CommonSwiper({Key? key, this.images = defaultImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = (MediaQuery.of(context).size.width/imageWidth)*imageHeight;
    return Container(
      height: 200,
      child: Swiper(
        autoplay: true,
        itemBuilder: (BuildContext context,int index){
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
          );

        },
        itemCount: images.length,
        pagination: new SwiperPagination(),
        //control: new SwiperControl(),
      ),
    );
  }
}
