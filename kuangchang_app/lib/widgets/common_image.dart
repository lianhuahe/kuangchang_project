import 'package:flutter/material.dart';


//final networkUriReg = RegExp('^http');//以http开头的是网络图片
final localUriReg = RegExp('^image');//以static开头的是本地图片

class CommonImage extends StatelessWidget {
  final String src;
  final double? imagewidth;
  final double? imageheight;
  final  BoxFit? imagefit; //系统自带的图片适应
  const CommonImage(this.src,{Key? key,this.imagewidth,this.imageheight,this.imagefit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if(localUriReg.hasMatch(src)){
      return Image.asset(src,
        width: imagewidth,
        height: imageheight,
        fit: imagefit,
      );
    }

  //  assert(false, '图片地址不合法');
    return Container();
  }
}
