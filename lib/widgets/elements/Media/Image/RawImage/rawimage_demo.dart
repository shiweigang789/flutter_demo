import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class RawImageDemo extends StatefulWidget {
  @override
  _RawImageDemoState createState() => _RawImageDemoState();
}

class _RawImageDemoState extends State<RawImageDemo> {
  ui.Image _img;

  @override
  void initState() {
    super.initState();
    _loadImageByAsset('assets/images/food06.jpeg').then((_urlImage) {
      setState(() {
        _img = _urlImage;
      });
    });
  }

  Future<ui.Image> _loadImageByAsset(String asset) async {
    ByteData data = await rootBundle.load(asset);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    ui.FrameInfo info = await codec.getNextFrame();

    return info.image;
  }

  @override
  Widget build(BuildContext context) {
    if (_img == null) {
      return Container(
        child: null,
      );
    }
    return Container(
      child: RawImage(
        image: _img,
      ),
    );
  }
}
