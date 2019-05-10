import 'package:flutter/material.dart';

class IconThemeDataDemo extends StatelessWidget {
  final Color curColor;
  final double curOpacity;

  IconThemeDataDemo({Key key, this.curColor, this.curOpacity}) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconTheme(
          data: IconThemeData(color: curColor, opacity: curOpacity),
          child: Icon(Icons.favorite)),
    );
  }
}
