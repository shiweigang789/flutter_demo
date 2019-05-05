import 'package:flutter/material.dart';

class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: this.check,
        onChanged: (bool val) {
          this.setState(() {
            check = val;
          });
        });
  }
}

class SwitchTypesDemo extends StatefulWidget {
  @override
  _SwitchTypesDemoState createState() => _SwitchTypesDemoState();
}

class _SwitchTypesDemoState extends State<SwitchTypesDemo> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: this.check,
      activeTrackColor: Colors.green,
      inactiveThumbColor: Colors.black,
      inactiveThumbImage: NetworkImage(
          'https://flutter.io/images/homepage/header-illustration.png'),
      activeThumbImage:
          NetworkImage('https://flutter.io/images/homepage/screenshot-2.png'),
      inactiveTrackColor: Colors.yellow,
      activeColor: Colors.blue,
      onChanged: (bool val) {
        this.setState(() {
          this.check = val;
        });
      },
    );
  }
}
