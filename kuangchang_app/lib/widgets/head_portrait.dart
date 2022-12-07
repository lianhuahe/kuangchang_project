import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

var imageWidth = 750.0;
var imageHeight = 424.0;
var imageWidthHeightRatio = imageWidth/imageHeight;
class HeadImage extends StatefulWidget {
  const HeadImage({Key? key}) : super(key: key);

  @override
  State<HeadImage> createState() => _HeadImageState();
}

class _HeadImageState extends State<HeadImage> {
  // 实例化
  final ImagePicker picker = ImagePicker();
  // 图片文件给一个默认的图片
  var _image ='image/9ab516426a392a03f7f3af14d25887265q.png';
  @override
  Widget build(BuildContext context) {
    return  Container(
        width:  MediaQuery.of(context).size.width,
        height: 30,
        alignment: Alignment.center,
        child: GestureDetector(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image(
                image:AssetImage('image/9ab516426a392a03f7f3af14d25887265q.png'),
                fit: BoxFit.fill,
                height: 40,
                width: 40,
              ),

            ),
            onTap:() {
              _openModalBottomSheet();
            }
        ) ,

      );


  }
// 对话框式底部滑动窗口
  Future _openModalBottomSheet() async {
    final option = await showModalBottomSheet(context: context, builder: (BuildContext context) {
      return Container(
        height: 161 + MediaQuery.of(context).padding.bottom,
        color: Color.fromRGBO(245, 245, 245, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              child: _itemCreat(context, '相机'),
              onTap: (){
                print('选中相机');
                Navigator.pop(context);
                getImage(ImageSource.camera);

              },
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(top: 1),
                child: _itemCreat(context, '相册'),
              ),
              onTap: (){
                print('选中相册');
                Navigator.pop(context);
                getImage(ImageSource.gallery);
              },
            ),
            GestureDetector(
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: _itemCreat(context, '取消'),
              ),
              onTap: (){
                Navigator.pop(context);
              },
            )
          ],
        ),
      );
    }
    );
  }

  Widget _itemCreat(BuildContext context, String title) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          title,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }


  // 获取图片方法
  Future getImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(
      // 拍照获取图片
      //  source: ImageSource.camera,
      // 手机选择图库
        source: source,
        // 图片的最大宽度
        maxWidth: 400
    );
    // 更新状态
    setState(() {
      if (pickedFile != null) {
        _image = pickedFile.path.toString();
        print(_image);
      } else {
        print('没有选择任何图片');
      }
    });
  }

}










