import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/resources/icon_names.dart';

final int len = IconNames.names.length;

// IconButton 默认按钮的实例
// isDisabled:是否是禁用，isDisabled 默认为true
class IconButtonDefault extends StatelessWidget {
  final bool isDisabled;

  const IconButtonDefault([this.isDisabled = true])
      : assert(isDisabled != null),
        super();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.volume_up),
      tooltip: "Increase volume by 10%",
      onPressed: isDisabled ? () {} : null,
    );
  }
}

// IconButton 自定义的实例
class IconButtonCustom extends StatelessWidget {
  final String txt;
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onPressed;

  const IconButtonCustom(
      [this.txt = '自定义按钮',
      this.color = Colors.blueAccent,
      this.shape,
      this.onPressed])
      : super();

  getIcons() {
    return Icons;
  }

  @override
  Widget build(BuildContext context) {
    final int iconIndex = Random.secure().nextInt(len);
    final IconData type = IconNames.names[iconIndex];
    final _onPressed = onPressed;
    return IconButton(
      alignment: AlignmentDirectional.center,
      color: _randomColor(),
      disabledColor: _randomColor(),
      highlightColor: Colors.yellow,
      icon: Icon(type),
      iconSize: (Random.secure().nextInt(20) + 20).toDouble(),
      splashColor: _randomColor(),
      padding: EdgeInsets.only(bottom: 5.0, top: 5.0, left: 30.0, right: 30.0),
      tooltip: '这是${type.codePoint}信息',
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
