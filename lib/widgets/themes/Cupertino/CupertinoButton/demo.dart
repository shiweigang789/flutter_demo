import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonFullDefault extends StatefulWidget {
  @override
  _CupertinoButtonFullDefaultState createState() =>
      _CupertinoButtonFullDefaultState();
}

class _CupertinoButtonFullDefaultState
    extends State<CupertinoButtonFullDefault> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      onPressed: () {
        print('on Pressed!');
      },
      pressedOpacity: 0.5,
      // 按下后的按钮不透明度
      color: CupertinoColors.inactiveGray,
      child: new Text('CupertinoButton'),
    );
  }
}
