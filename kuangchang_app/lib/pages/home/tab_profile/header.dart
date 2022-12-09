import 'package:flutter/material.dart';

var loginRegisterStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  /*Widget _notLoginBuilder(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 10.0,left: 20.0,bottom: 20.0),
      decoration: BoxDecoration(color: Colors.blue),
      height: 95.0,
      child: Row(children: <Widget>[
        Container(
          height: 65.0,
          width: 65.0,
          margin: EdgeInsets.only(right: 15.0),
          child: CircleAvatar(backgroundImage: NetworkImage("https://cn.bing.com/images/search?view=detailV2&ccid=QFdwl07%2f&id=1C8280D2D75B8653FE4F0AA4FA7416EFB30A9059&thid=OIP.QFdwl07_aviM1ch2KpyyFgHaEo&mediaurl=https%3a%2f%2fwww.keaidian.com%2fuploads%2fallimg%2f190424%2f24110307_4.jpg&exph=1200&expw=1920&q=%e5%9b%be%e7%89%87&simid=608031476730854293&FORM=IRPRST&ck=8D9642E506965EDD50F890B71B499E49&selectedIndex=0&idpp=overlayview&ajaxhist=0&ajaxserp=0"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10.0),
            ),
            Row(
              children: <Widget> [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('login');
                  },child: Text('登录',style: loginRegisterStyle,),
                ),
                Text('/',style: loginRegisterStyle,),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).pushNamed('register');
                  },child: Text('注册',style: loginRegisterStyle,),
                ),
              ],
            ),
            Text('登录后可体验更多',style: TextStyle(color: Colors.white),)
          ],)
      ],
      ),
    );
  }
*/
  Widget _LoginBuilder(BuildContext context) {
    String userName = '坤坤坤坤哥';
    String userImage = "image/9ab516426a392a03f7f3af14d2588726a2.png";
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0, bottom: 20.0),
      decoration: BoxDecoration(color: Colors.blue),
      height: 95.0,
      child: Row(
        children: <Widget>[
          Container(
            height: 65.0,
            width: 65.0,
            margin: EdgeInsets.only(right: 15.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  "image/9ab516426a392a03f7f3af14d2588726a2.png"), //暂时使用本地图片
              //child: CircleAvatar(backgroundImage: NetworkImage(userImage) //从网络下载图片
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0),
              ),
              Text(
                userName,
                style: loginRegisterStyle,
              ),
              Text(
                '查看编辑个人资料',
                style: TextStyle(fontSize: 13.0, color: Colors.white),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //  var isLogin = true;
    // return isLogin ? _LoginBuilder(context) : _notLoginBuilder(context);
    return _LoginBuilder(context);
  }
}
