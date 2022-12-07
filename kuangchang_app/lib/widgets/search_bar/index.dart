import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SearchBar extends StatefulWidget {
  final Function? goBackCallback; //回退按钮函数
  String? inputValue = ''; //搜索框输入值
  String? defaultInputValue = '请输入搜索词'; //搜索框默认值
  final bool? onCancel; //取消按钮
  final Function onSearch; //用户点击搜索框触发
  final ValueChanged<String>? onSearchSubmit; //用户输入搜索词后，点击键盘的搜索键触发
  SearchBar(
      {Key? key,
      this.goBackCallback,
      this.inputValue,
      this.defaultInputValue,
      required this.onSearch,
      this.onSearchSubmit,
      this.onCancel})
      : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = '';
  TextEditingController _controller = TextEditingController();
  FocusNode _focusNode = new FocusNode();
  Function? _onClean() {
    _controller.clear();
    setState(() {
      _searchWord = '';

    });
  }


  Widget headImg(){
    return Container(
      child: ClipOval(
        child: Image.network(
          "https://th.wallhaven.cc/lg/1p/1p398w.jpg" ,
          height: 40,
          width: 40,
          fit: BoxFit.cover,),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller = TextEditingController(text: widget.inputValue);
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
               height: 34.0,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(17.0),
                  color: Colors.grey[200],
                ),
              //margin: EdgeInsets.only(right: 10.0),
            child: TextField(
              //onTap属性用于点击输入框时的回调，没有参数。
              onSubmitted: (value){
                  _focusNode.unfocus();
                widget.onSearch();
              },//onSubmitted属性用于点击键盘的动作按钮时的回调，参数为当前输入框中的值
              textInputAction: TextInputAction.search,
              onChanged: (String value) {
                setState(() {
                  _searchWord = value;
                });
              },
              focusNode: _focusNode,
              controller: _controller,
              style: TextStyle(fontSize: 14.0),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  //输入框底下的线取消
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18.0,
                  ),
                  //前置图标
                  hintText: '',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                  //contentPadding: EdgeInsets.only(top: -1,),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _onClean();
                    },
                    child: Icon(
                      Icons.clear,
                      size: 18.0,
                      color: _searchWord == '' ? Colors.black12 : Colors.black,
                    ),
                  )),
            ),
          )
          ),

          if (widget.onCancel != null)
            GestureDetector(
                onTap: () {},
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text('取消',
                      style: TextStyle(fontSize: 14.0, color: Colors.black)),
                )
            )
        ],
      ),
    );
  }
}
