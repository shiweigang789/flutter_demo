import 'package:flutter/material.dart';

class RowMainAxisAlignment extends StatelessWidget {
  final MainAxisAlignment status;
  final CrossAxisAlignment crossStatus;

  const RowMainAxisAlignment(this.status, this.crossStatus) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: status,
      children: <Widget>[
        Container(
          color: Color(0xfffce4ec),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          color: Color(0xfff8bbd0),
          width: 90.0,
          height: 50.0,
        ),
        Container(
          color: Color(0xfff48fb1),
          width: 90.0,
          height: 50.0,
        ),
      ],
    );
  }
}

class RowLayoutCreate extends StatelessWidget {
  const RowLayoutCreate() : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfffce4ec),
          width: 60.0,
          height: 50.0,
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfff8bbd0),
          width: 60.0,
          height: 50.0,
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfff48fb1),
          width: 60.0,
          height: 50.0,
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: Color(0xfff06292),
          width: 60.0,
          height: 50.0,
        ),
      ],
    );
  }
}
