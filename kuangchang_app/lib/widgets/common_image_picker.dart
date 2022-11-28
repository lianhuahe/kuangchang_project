import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

const List<String> defaultImages = [
  'https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-136217274.jpg',
  'https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-136217274.jpg',
  'https://alifei05.cfp.cn/creative/vcg/veer/1600water/veer-136217274.jpg',
];

var imageWidth = 750.0;
var imageHeight = 424.0;
var imageWidthHeightRatio = imageWidth/imageHeight;

class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChange;
  const CommonImagePicker({Key? key, required this.onChange}) : super(key: key);

  @override
  State<CommonImagePicker> createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {

  List<File> files = [];


  _pickImage() async{
    final picker = ImagePicker();
    var image = await picker.pickImage(source: ImageSource.gallery);
     // var image = await ImagePicker.pickImage(source: ImageSource.gallery);
   // final image = await picker.pickImage(source: ImageSource.gallery);
    if(image==null) return;
    setState(() {
      files = files..add(File(image.path));
    });
    if(widget.onChange!=null){
      widget.onChange(files);
    }
  }


  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width-10.0*4)/3;
    var height = width/imageWidthHeightRatio;
    Widget addButton = GestureDetector(
      onTap: (){
         _pickImage();
      },
      behavior: HitTestBehavior.translucent,//空白区域可以继续点击
      child:  Container(
        width: width,
        height: height,
        color: Colors.grey,
        child: Center(
          child: Text('+',style: TextStyle(fontSize: 40.0,fontWeight: FontWeight.w100),),
        ),
      ),
    );



    Widget wrapper(File file){
      return Stack(

        children:<Widget> [

          Image.file(
            file,
            width: width,
            height: height,
            fit: BoxFit.cover,
          ),
          Positioned(
              right:-20 ,
              top: -20,

              child:IconButton(

                onPressed: (){
                  setState(() {
                    files=files..remove(file);
                  });
                  if(widget.onChange!=null){
                    widget.onChange(files);
                  }
                },
                icon: Icon(Icons.delete_forever,color: Colors.red,),
          )
          )
        ],
      );
       /* Image.file(
        imageUri,
        width: width,
        height: height,
        fit: BoxFit.cover,
      );*/
    }


    List<Widget> list = files.map((item)=>wrapper(item)).toList()..add(addButton);
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Wrap(
        spacing: 10.0,
        runSpacing: 10.0,
        children: list,
      ),
    );
  }
}
