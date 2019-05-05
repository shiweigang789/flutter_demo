import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextDemo extends StatefulWidget {
  @override
  _TextDemoState createState() => _TextDemoState();
}

class _TextDemoState extends State<TextDemo> {
  int index = 0;

  Duration timer = Duration(minutes: 50);

  @override
  Widget build(BuildContext context) {
    return Text("i'm a text");
  }
}
