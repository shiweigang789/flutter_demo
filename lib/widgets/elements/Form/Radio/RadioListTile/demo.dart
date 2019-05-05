import 'package:flutter/material.dart';

class DemoA extends StatefulWidget {
  @override
  _DemoAState createState() => _DemoAState();
}

class _DemoAState extends State<DemoA> {
  String value = "";

  onChange(v) {
    this.setState(() {
      value = v;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: const Text("A"),
          value: "A",
          groupValue: this.value,
          isThreeLine: false,
          subtitle: const Text("subtitleA"),
          onChanged: onChange,
        ),
        RadioListTile(
          title: const Text("B"),
          value: "B",
          subtitle: const Text("subtitleB"),
          groupValue: this.value,
          onChanged: onChange,
        )
      ],
    );
  }
}
