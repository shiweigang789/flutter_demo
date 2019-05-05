import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FittedBoxDefault extends StatelessWidget {
  final BoxFit curfit;
  final String dec;

  FittedBoxDefault({Key key, this.curfit, this.dec});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          color: Color(0xfff8bbd0),
          child: FittedBox(
            fit: curfit,
            alignment: Alignment.center,
            child: Container(
              color: Color(0xfff48fb1),
              child: Text(
                'fittedBox',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        Text(dec),
      ],
    );
  }
}
