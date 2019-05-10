import 'package:flutter/material.dart';

class ImageIconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage('assets/images/btn_icon_dingyuehao_normal.png'),
      color: Colors.red,
      size: 50.0,
    );
  }
}
