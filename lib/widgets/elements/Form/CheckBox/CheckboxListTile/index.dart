import 'dart:math';

import 'package:flutter/material.dart';

/// Checkbox 默认的实例
/// index 当前checkbox 的索引值
class CheckboxDefault extends StatefulWidget {
  final int index;
  final parent;

  const CheckboxDefault([this.parent, this.index = -1]) : super();

  @override
  _CheckboxDefaultState createState() => _CheckboxDefaultState();
}

class _CheckboxDefaultState extends State<CheckboxDefault> {
  bool isChecked = false;
  Color color = _randomColor();

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: color,
      tristate: false,
      value: isChecked,
      onChanged: (bool bol) {
        if (mounted) {
          setState(() {
            isChecked = bol;
          });
        }
      },
    );
  }
}

/// Checkbox 默认的实例
/// index 当前checkbox 的索引值
class CheckboxSelect extends StatelessWidget {
  final int index;
  final widget;
  final parent;

  const CheckboxSelect([this.widget, this.parent, this.index = -1]) : super();

  @override
  Widget build(BuildContext context) {
    Color color = _randomColor();
    return Checkbox(
      activeColor: color,
      tristate: false,
      value: parent.selectValue == this.index,
      onChanged: (bool bol) {
        if (parent.mounted) {
          parent.setState(() {
            parent.selectValue = bol ? this.index : -1;
          });
        }
      },
    );
  }
}

Color _randomColor() {
  var red = Random.secure().nextInt(255);
  var green = Random.secure().nextInt(255);
  var blue = Random.secure().nextInt(255);
  return Color.fromARGB(255, red, green, blue);
}
