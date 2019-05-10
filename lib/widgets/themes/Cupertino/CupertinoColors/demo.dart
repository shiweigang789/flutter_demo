import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoColorsFullDefault extends StatefulWidget {
  @override
  _CupertinoColorsFullDefaultState createState() =>
      _CupertinoColorsFullDefaultState();
}

class _CupertinoColorsFullDefaultState
    extends State<CupertinoColorsFullDefault> {
  Widget setColorsView(cupertinoColors, String colorName) {
    return Container(
        width: MediaQuery.of(context).size.width - 100,
        padding: const EdgeInsets.all(10.0),
        child: Text(colorName, style: TextStyle(color: Colors.white)),
        decoration: BoxDecoration(color: cupertinoColors));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        setColorsView(CupertinoColors.activeBlue, 'activeBlue'),
        setColorsView(CupertinoColors.activeGreen, 'activeGreen'),
        setColorsView(CupertinoColors.black, 'black'),
        setColorsView(CupertinoColors.destructiveRed, 'destructiveRed'),
        setColorsView(CupertinoColors.inactiveGray, 'inactiveGray'),
        setColorsView(
            CupertinoColors.lightBackgroundGray, 'lightBackgroundGray'),
        setColorsView(CupertinoColors.white, 'white')
      ],
    );
  }
}
