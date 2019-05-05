import 'dart:math';

import 'package:flutter/material.dart';

class OutlineButtonDefault extends StatelessWidget {
  final bool isDisabled;

  const OutlineButtonDefault([this.isDisabled = true])
      : assert(isDisabled != null),
        super();

  @override
  Widget build(BuildContext context) {
    return OutlineButton(
        onPressed: isDisabled ? () {} : null,
        child: const Text(
          '默认按钮',
          semanticsLabel: 'FLAT BUTTON 1',
        ));
  }
}

class OutlineButtonIconDefault extends StatelessWidget {
  final bool isDisabled;
  final IconData icon;

  const OutlineButtonIconDefault(
      [this.isDisabled = true, this.icon = Icons.add_circle])
      : super();

  @override
  Widget build(BuildContext context) {
    return OutlineButton.icon(
      icon: Icon(
        icon,
        size: 25.0,
        color: _randomColor(),
      ),
      label: Text(
        "默认按钮",
        semanticsLabel: 'FLAT BUTTON 2',
      ),
      onPressed: isDisabled ? () {} : null,
    );
  }
}

class OutlineButtonCustom extends StatelessWidget {
  final String txt;
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onPressed;

  const OutlineButtonCustom(
      [this.txt = "自定义按钮",
      this.color = Colors.blueAccent,
      this.shape,
      this.onPressed])
      : super();

  @override
  Widget build(BuildContext context) {
    final _onPressed = onPressed;
    return OutlineButton(
      child: Text(
        txt,
        semanticsLabel: 'FLAT BUTTON 2',
      ),
      borderSide: BorderSide(
        color: _randomColor(),
        width: Random.secure().nextInt(10).toDouble(),
      ),
      color: _randomColor(),
      disabledBorderColor: Colors.red,
      highlightColor: Colors.yellow,
      highlightedBorderColor: Colors.black54,
      textColor: _randomColor(),
      disabledTextColor: _randomColor(),
      textTheme: ButtonTextTheme.normal,
      splashColor: _randomColor(),
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.only(bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
      highlightElevation: 10.0,
      shape: shape,
      onPressed: () {
        if (_onPressed is VoidCallback) {
          _onPressed();
        }
      },
    );
  }
}

Color _randomColor() {
  var red = Random.secure().nextInt(255);
  var greed = Random.secure().nextInt(255);
  var blue = Random.secure().nextInt(255);
  return Color.fromARGB(255, red, greed, blue);
}
