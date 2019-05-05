import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/elements/Frame/Box/OverflowBox/demo.dart';

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("宽高都小于最小限制"),
            Container(
              width: 100.0,
              height: 100.0,
              color: Color(0xfff8bbd0),
              child: OverflowBoxDefault(
                curmaxHeight: 150.0,
                curmaxWidth: 150.0,
                //宽高都小于最小限制
                curHeight: 50.0,
                curWidth: 50.0,
                curalignment: Alignment.bottomLeft,
              ),
            ),
            SizedBox(height: 20),
            Text("在限制之内"),
            Container(
              width: 100.0,
              height: 100.0,
              color: Color(0xfff8bbd0),
              child: OverflowBoxDefault(
                curmaxHeight: 150.0,
                curmaxWidth: 150.0,
                curHeight: 80.0,
                curWidth: 80.0,
                curalignment: Alignment.topRight,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: Text("宽高都大于最大限制"),
            ),
            Container(
              width: 100.0,
              height: 100.0,
              color: Color(0xfff8bbd0),
              child: OverflowBoxDefault(
                curmaxHeight: 150.0,
                curmaxWidth: 150.0,
                //宽高大于最大限制
                curHeight: 200.0,
                curWidth: 200.0,
                curalignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
//      onGenerateRoute: Application.router.generator,
    );
  }
}
