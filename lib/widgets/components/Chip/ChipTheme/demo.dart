import 'package:flutter/material.dart';

class ChipThemeDemo extends StatefulWidget {
  @override
  _ChipThemeDemoState createState() => _ChipThemeDemoState();
}

class _ChipThemeDemoState extends State<ChipThemeDemo> {
  Color _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return ChipTheme(
      data:
          ChipTheme.of(context).copyWith(backgroundColor: Colors.red.shade800),
      child: ChoiceChip(
        padding:
            EdgeInsets.only(left: 100.0, right: 100.0, top: 10.0, bottom: 10.0),
        label: Text('down'),
        labelStyle: TextStyle(color: Colors.white),
        onSelected: (bool value) {
          setState(() {
            _color = value ? Colors.lightBlue : Colors.red;
          });
        },
        selected: _color == Colors.lightBlue,
      ),
    );
  }
}
