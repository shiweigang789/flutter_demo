import 'dart:math';
import 'package:flutter/material.dart';

// RaisedButton 默认按钮的实例
// isDisabled:是否是禁用，isDisabled 默认为true
class RaisedButtonDefault extends StatelessWidget {
  final bool isDisabled;

  const RaisedButtonDefault([this.isDisabled = true])
      : assert(isDisabled != null),
        super();

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: const Text(
        '默认按钮',
        semanticsLabel: "FLAT BUTTON 1",
      ),
      onPressed: isDisabled ? () {} : null,
    );
  }
}

// RaisedButton.icon 默认按钮的实例
// Create a text button from a pair of widgets that serve as the button's icon and label
// isDisabled:是否是禁用
class RaisedButtonIconDefault extends StatelessWidget {
  final bool isDisabled;
  final IconData icon;

  const RaisedButtonIconDefault(
      [this.isDisabled = true, this.icon = Icons.add_circle])
      : super();

  Color _randomColor() {
    var red = Random.secure().nextInt(255);
    var greed = Random.secure().nextInt(255);
    var blue = Random.secure().nextInt(255);
    return Color.fromARGB(255, red, greed, blue);
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: isDisabled ? () {} : null,
      icon: Icon(
        icon,
        size: 25.0,
        color: _randomColor(),
      ),
      label: Text(
        '默认按钮',
        semanticsLabel: 'FLAT BUTTON 1',
      ),
    );
  }
}

// RaisedButton 自定义的实例
class RaisedButtonCustom extends StatelessWidget {
  final String txt;
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onOPressed;

  const RaisedButtonCustom(
      [this.txt = '自定义按钮',
      this.color = Colors.blueAccent,
      this.shape,
      this.onOPressed])
      : super();

  @override
  Widget build(BuildContext context) {
    final _onPressed = onOPressed;
    return RaisedButton(
      child: Text(
        txt,
        semanticsLabel: "FLAT BUTTON 2",
      ),
      color: color,
      colorBrightness: Brightness.dark,
      highlightColor: Colors.yellow,
      disabledColor: Colors.grey,
      textColor: Colors.white,
      disabledTextColor: Colors.grey,
      textTheme: ButtonTextTheme.normal,
      splashColor: Colors.deepPurple,
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.only(
        bottom: 5.0,
        top: 5.0,
        left: 30.0,
        right: 30.0,
      ),
      shape: (shape is ShapeBorder)
          ? shape
          : Border.all(
              color: Colors.grey, width: 2.0, style: BorderStyle.solid),
      onPressed: () {
        if (_onPressed is VoidCallback) {
          _onPressed();
        }
      },
      onHighlightChanged: (isClick) {
        print(isClick);
      },
    );
  }
}
