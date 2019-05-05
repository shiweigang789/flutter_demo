import 'dart:math';

import 'package:flutter/material.dart';

class RawMaterialButtonDefault extends StatelessWidget {
  final bool isDisabled;

  const RawMaterialButtonDefault([this.isDisabled = true])
      : assert(isDisabled != null),
        super();

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: isDisabled ? () {} : null,
      child: const Text(
        '默认按钮',
        semanticsLabel: 'FLAT BUTTON 1',
      ),
    );
  }
}

class RawMaterialButtonCustom extends StatelessWidget {
  final String txt;
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onPressed;

  const RawMaterialButtonCustom(
      [this.txt, this.color, this.shape, this.onPressed])
      : super();

  @override
  Widget build(BuildContext context) {
    final _onPressed = onPressed;
    final _fontSize = (Random.secure().nextInt(10) + 15).toDouble();
    return RawMaterialButton(
      onPressed: () {
        if (_onPressed is VoidCallback) {
          _onPressed();
        }
      },
      textStyle: TextStyle(color: _randomColor(), fontSize: _fontSize),
      animationDuration: Duration(seconds: 1),
      child: Text(
        txt,
        semanticsLabel: 'FLAT BUTTON 2',
      ),
      highlightColor: Colors.yellow,
      splashColor: _randomColor(),
      clipBehavior: Clip.antiAlias,
      padding: EdgeInsets.only(bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
      highlightElevation: 10.0,
    );
  }
}

Color _randomColor() {
  var red = Random.secure().nextInt(255);
  var greed = Random.secure().nextInt(255);
  var blue = Random.secure().nextInt(255);
  return Color.fromARGB(255, red, greed, blue);
}
