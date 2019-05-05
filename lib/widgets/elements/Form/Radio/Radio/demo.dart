import 'package:flutter/material.dart';

class RadioADemo extends StatefulWidget {
  @override
  _RadioADemoState createState() => _RadioADemoState();
}

class _RadioADemoState extends State<RadioADemo> {
  int groupValue = 1;

  onCahnge(val) {
    this.setState(() {
      groupValue = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Radio(
              value: 1,
              groupValue: groupValue,
              onChanged: (T) {
                onCahnge(T);
              }),
          Radio(
            value: 2,
            groupValue: groupValue,
            onChanged: (T) {
              onCahnge(T);
            },
          ),
          Radio(
            value: 3,
            groupValue: groupValue,
            onChanged: (T) {
              onCahnge(T);
            },
          )
        ],
      ),
    );
  }
}
