import 'package:flutter/material.dart';

class SnackBarLessDefault extends StatelessWidget {
  final widget;
  final parent;

  const SnackBarLessDefault([this.widget, this.parent]) : super();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          GestureDetector(
            onTap: () {
              final snackBar = SnackBar(
                content: Text('这是一个SnackBar, 右侧有SnackBarAction'),
                backgroundColor: Colors.red,
                action: SnackBarAction(
                  label: '撤销',
                  onPressed: () {},
                  textColor: Colors.black,
                ),
                duration: Duration(seconds: 3),
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Text('显示SnackBar'),
          ),
          GestureDetector(
            onTap: () {
              final snackBar = SnackBar(
                content: Text('右侧无SnackBarAction'),
                backgroundColor: Colors.red,
                duration: Duration(seconds: 3), // 持续时间
                //animation,
              );
              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Text('显示无SnackBarAction的SnackBar'),
          )
        ],
      ),
    );
  }
}
