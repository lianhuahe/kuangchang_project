import 'package:flutter/material.dart';
class CommonFloatingActionButton extends StatelessWidget {
  final String title;
  final Function onTap;
  const CommonFloatingActionButton({Key? key, required this.title, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
            onTap: (){
              if(onTap!=null)
                onTap();
            },
            child: Container(
              height: 40.0,
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.grey
              ),
              child: Center(
                child: Text(title,style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                ),),
              ),),
          );





  }
}
