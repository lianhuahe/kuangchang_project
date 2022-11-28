import 'package:flutter/material.dart';
import 'data.dart';
class GradeStart extends StatelessWidget {
  final double ?mak;
  const GradeStart( this.mak,{Key? key}) : super(key: key);
  List<Widget> _getGradeStar(double ?score) {
    List<Widget> _list = <Widget>[];
    for (var i = 0; i < 5; i++) {
      double factor = (score! - i);
      if (factor >= 1) {
        factor = 1.0;
      }else if (factor < 0){
        factor = 0;
      }
      Stack _st = Stack(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.grey,
          ),
          ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: factor,
                child: Icon(
                  Icons.star,
                  color: Colors.redAccent,
                ),
              )
          )
        ],
      );
      _list.add(_st);
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
              children: _getGradeStar(mak)
          )
        ],
      ),

    );
  }
}



/*
import 'package:flutter/material.dart';

class GradeStart extends StatelessWidget {
  List<Widget> _getGradeStar(double score) {
    List<Widget> _list = <Widget>[];
    for (var i = 0; i < 5; i++) {
      double factor = (score - i);
      if (factor >= 1) {
        factor = 1.0;
      }else if (factor < 0){
        factor = 0;
      }
      Stack _st = Stack(
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.grey,
          ),
          ClipRect(
              child: Align(
                alignment: Alignment.topLeft,
                widthFactor: factor,
                child: Icon(
                  Icons.star,
                  color: Colors.redAccent,
                ),
              )
          )
        ],
      );
      _list.add(_st);
    }
    return _list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            Row(
                children: _getGradeStar(3.5)
            )
          ],
        ),

    );
  }
}*/
