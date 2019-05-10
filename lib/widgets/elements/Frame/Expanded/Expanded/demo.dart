import 'package:flutter/material.dart';

class ExpandedDemo extends StatelessWidget {
  final TextStyle textColor = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('Expanded'),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print('点击红色按钮事件');
              },
              color: const Color(0xffcc0000),
              child: Text(
                '红色按钮',
                style: textColor,
              ),
            ),
            Expanded(
              flex: 1,
              child: RaisedButton(
                onPressed: () {
                  print('点击黄色按钮');
                },
                color: const Color(0xfff1c232),
                child: Text(
                  '黄色按钮',
                  style: textColor,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                print('点击粉色按钮事件');
              },
              color: Color(0xffea9999),
              child: Text(
                '粉色按钮',
                style: textColor,
              ),
            )
          ],
        ),
        Text('Flexible'),
        Row(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                print('点击红色按钮事件');
              },
              color: const Color(0xffcc0000),
              child: Text(
                '红色按钮',
                style: textColor,
              ),
            ),
            Flexible(
              flex: 1,
              child: RaisedButton(
                onPressed: () {
                  print('点击黄色按钮事件');
                },
                color: Color(0xfff1c232),
                child: Text(
                  '黄色按钮',
                  style: textColor,
                ),
              ),
            ),
            RaisedButton(
              onPressed: () {
                print('点击粉色按钮事件');
              },
              color: Color(0xffea9999),
              child: Text(
                '粉色按钮',
                style: textColor,
              ),
            )
          ],
        )
      ],
    );
  }
}
