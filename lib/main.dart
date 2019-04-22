import 'package:flutter/material.dart';

import 'package:flutter_app/widgets/elements/Form/Input/TextField/text_field_demo.dart';
import 'package:flutter_app/widgets/elements/Form/CheckBox/CheckboxListTile/demo.dart';

const int ThemeColor = 0xFFC91B3A;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'title',
      theme: new ThemeData(
        primaryColor: Color(ThemeColor),
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: Color(ThemeColor),
          size: 35.0,
        ),
      ),
      home: new Scaffold(
//          body: DefaultTextField()
          body: CheckboxListTileStateDefault(),
      ),
//      onGenerateRoute: Application.router.generator,
    );
  }
}
