import 'package:flutter/material.dart';

class OverflowBoxDefault extends StatelessWidget {
  final double curmaxHeight;
  final double curmaxWidth;
  final double curHeight;
  final double curWidth;
  final AlignmentGeometry curalignment;

  OverflowBoxDefault(
      {Key key,
      this.curmaxHeight,
      this.curmaxWidth,
      this.curHeight,
      this.curWidth,
      this.curalignment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverflowBox(
      minHeight: 80.0,
      minWidth: 80.0,
      maxHeight: curmaxHeight,
      maxWidth: curmaxWidth,
      alignment: curalignment,
      child: Container(
        height: curHeight,
        width: curWidth,
        child: Text(
          "$curmaxWidth * $curmaxHeight",
          style: TextStyle(color: Colors.white),
        ),
        color: Color(0xfff48fb1),
      ),
    );
  }
}
