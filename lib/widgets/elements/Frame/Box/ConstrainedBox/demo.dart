import 'package:flutter/material.dart';

class ConstrainedBoxCreate extends StatelessWidget {
  final double currWidth;
  final String describe;

  const ConstrainedBoxCreate({Key key, this.currWidth, this.describe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ConstrainedBox(
          constraints: const BoxConstraints(
            minWidth: 100.0,
            minHeight: 20.0,
            maxWidth: 300.0,
            maxHeight: 50.0,
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 20.0),
            width: currWidth,
            height: 250.0,
            child: Text(
              describe,
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xfff8bbd0),
          ),
        )
      ],
    );
  }
}
