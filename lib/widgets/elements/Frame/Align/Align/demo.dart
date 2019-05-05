import 'package:flutter/material.dart';

class AlignAlignment extends StatelessWidget {
  final Alignment status;
  final String des;

  const AlignAlignment(this.status, this.des) : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffd81b60),
      width: 90.0,
      height: 50.0,
      child: Align(
        alignment: status,
        child: Text(
          des,
          style: TextStyle(fontSize: 12.0, color: Color(0xffffffff)),
        ),
      ),
    );
  }
}

class AlignFactor extends StatelessWidget {
  final Alignment status;
  final double wFactor;
  final double hFactor;
  final String des;

  const AlignFactor(this.status, this.wFactor, this.hFactor, this.des)
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
      color: Color(0xffd81b60),
      child: Align(
        alignment: status,
        widthFactor: wFactor,
        heightFactor: hFactor,
        child: Container(
          color: Color(0xfff06292),
          width: 100.0,
          height: 50.0,
          child: Text(
            des,
            style: TextStyle(color: Color(0xffffffff)),
          ),
        ),
      ),
    );
  }
}
