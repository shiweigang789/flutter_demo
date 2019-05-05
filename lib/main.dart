import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/elements/Frame/Box/FittedBox/demo.dart';

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

        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FittedBoxDefault(
                  //设置child写入布局期间分配空间
                  curfit: BoxFit.contain,
                  dec: 'contain',
                ),
                FittedBoxDefault(
                  curfit: BoxFit.fill,
                  dec: 'fill',
                ),
                FittedBoxDefault(
                  curfit: BoxFit.cover,
                  dec: 'cover',
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FittedBoxDefault(
                  curfit: BoxFit.fitHeight,
                  dec: 'fitHeight',
                ),
                FittedBoxDefault(
                  curfit: BoxFit.fitWidth,
                  dec: 'fitWidth',
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FittedBoxDefault(
                  curfit: BoxFit.none,
                  dec: 'none',
                ),
                FittedBoxDefault(
                  curfit: BoxFit.scaleDown,
                  dec: 'scaleDown',
                ),
              ],
            ),
          ],
        ),
      ),
//      onGenerateRoute: Application.router.generator,
    );
  }
}
