import 'dart:async';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

CustomPaint graph;
var image;

class CustomViewPage extends StatefulWidget {
  final String type;

  CustomViewPage({this.type = 'drawline'}) : super();

  @override
  _CustomViewPageState createState() => _CustomViewPageState();
}

class _CustomViewPageState extends State<CustomViewPage>
    with SingleTickerProviderStateMixin {
  static Future<ui.Image> getImage(String asset) async {
    ByteData data = await rootBundle.load(asset);
    Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List());
    FrameInfo info = await codec.getNextFrame();
    return info.image;
  }

  @override
  void initState() {
    super.initState();
    getImage("assets/images/painterImg.jpeg").then((data) {
      if (mounted) {
        setState(() {
          image = data;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    graph = CustomPaint(
      painter: DrawPainter(type: widget.type),
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.width * 0.6,
      margin: EdgeInsets.all(10.0),
      child: graph,
    );
  }
}

class DrawPainter extends CustomPainter {
  Paint painter;
  final type;

  DrawPainter({this.type}) {
    painter = Paint()
      ..color = Colors.blueAccent
      ..strokeCap = StrokeCap.round
      ..isAntiAlias = true
      ..strokeWidth = 5.0
      ..filterQuality = FilterQuality.high
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    switch (type) {
      case 'drwaPoints':
        const List<Offset> points1 = [
          Offset(20.0, 0.0),
          Offset(100.0, 50.0),
          Offset(150.0, 0.0),
          Offset(300.0, 0.0)
        ];
        const List<Offset> points2 = [
          Offset(20.0, 100.0),
          Offset(100.0, 100.0),
          Offset(150.0, 100.0),
          Offset(300.0, 100.0)
        ];
        const List<Offset> points3 = [
          Offset(20.0, 150.0),
          Offset(100.0, 150.0),
          Offset(150.0, 180.0),
          Offset(300.0, 150.0)
        ];
        canvas.drawPoints(
            PointMode.points,
            points1,
            painter
              ..color = Colors.redAccent
              ..strokeWidth = 10.0);
        canvas.drawPoints(
            PointMode.lines,
            points2,
            painter
              ..color = Colors.orange
              ..strokeWidth = 10.0);
        canvas.drawPoints(
            PointMode.polygon,
            points3,
            painter
              ..color = Colors.blue
              ..strokeWidth = 10.0);
        break;
      case 'drawLine':
        canvas.drawLine(Offset(20.0, 0.0), Offset(size.width * 0.8, 200),
            painter..color = Colors.redAccent);
        break;
      case 'drawCircle':
        canvas.drawCircle(
            Offset(size.width / 2, 100.0),
            100,
            painter
              ..color = Colors.greenAccent
              ..style = PaintingStyle.stroke);
        break;
      case 'drawOval':
        Rect rect1 =
            Rect.fromPoints(Offset(0.0, 0.0), Offset(size.width, 200.0));
        canvas.drawOval(rect1, painter..color = Colors.indigo);
        break;
      case 'drawArc':
        const PI = 3.1415926;
        Rect rect1 = Rect.fromCircle(center: Offset(20.0, 50.0), radius: 100.0);
        canvas.drawArc(rect1, 0.0, PI / 2, false, painter..color = Colors.pink);
        Rect rect2 = Rect.fromCircle(
            center: Offset(size.width * 0.6, 50.0), radius: 100.0);
        canvas.drawArc(
            rect2, 0.0, PI / 2, true, painter..color = Colors.deepPurple);
        break;
      case 'drawRRect':
        Rect rect1 = Rect.fromCircle(center: Offset(80.0, 100.0), radius: 50.0);
        Rect rect2 =
            Rect.fromCircle(center: Offset(250.0, 100.0), radius: 50.0);
        RRect rRect1 = RRect.fromRectAndRadius(rect1, Radius.circular(0.0));
        canvas.drawRRect(rRect1, painter);
        RRect rRect2 = RRect.fromRectAndRadius(rect2, Radius.circular(20.0));
        canvas.drawRRect(rRect2, painter);
        break;
      case 'drawDRRect':
        Rect rect1 = Rect.fromCircle(
            center: Offset(size.width / 2, 100.0), radius: 60.0);
        Rect rect2 =
            Rect.fromCircle(center: Offset(size.width / 2, 100), radius: 40.0);
        RRect outer = RRect.fromRectAndRadius(rect1, Radius.circular(30.0));
        RRect inner = RRect.fromRectAndRadius(rect2, Radius.circular(5.0));
        canvas.drawDRRect(outer, inner, painter..color = Colors.lime);
        break;
      case 'drawImage':
        final src = Rect.fromLTWH(0.0, 0.0, 684.0, 442.0);
        final dst = Rect.fromLTWH(0.0, 0.0, size.width, size.height);
        canvas.drawImageRect(image, src, dst, painter);
        break;
      case 'drawSatr':
        var rect = Offset.zero & size;
        canvas.drawRect(rect, Paint()..color = Color(0xFF000000));
        canvas.drawPath(
            MathTools().regularPolygonPath(5, 30, Offset(50.0, 50.0)),
            painter..color = Colors.red);
        canvas.save();
        canvas.translate(0, 100);
        canvas.scale(1.2, 1.2);
        canvas.drawPath(
            MathTools().nStarPath(4, 30, 30, Offset(40.0, 50.0)), painter);
        canvas.restore();
        canvas.save();
        canvas.translate(150, 50);
        canvas.rotate(50 * pi / 180);
        canvas.drawPath(MathTools().regularStarPath(5, 30, Offset(0, 0)),
            painter..color = Colors.green);
        canvas.restore(); // 用来恢复Canvas之前保存的状态。防止save后对Canvas执行的操作对后续的绘制有影响
        /// 绘制变形星形
        canvas.save(); // save之后，可以调用Canvas的平移、放缩、旋转、错切、裁剪等操作
        canvas.translate(80, 100);
        canvas.skew(0.5, 0.2);
        canvas.drawPath(MathTools().regularStarPath(6, 30, Offset(50, 50)),
            painter..color = Colors.lime);
        canvas.restore();
        canvas.translate(250, 0);
        Float64List matrix = Float64List.fromList(const <double>[
          // careful, this is in _column_-major order
          0.7, -0.7, 0.0, 0.0,
          0.7, 0.7, 0.0, 0.0,
          0.7, 0.0, 1.0, 0.0,
          -70.697, 98.057, 0.0, 1.0,
        ]);
        canvas.transform(matrix);
        canvas.drawPath(MathTools().regularStarPath(5, 30, Offset(50, 50)),
            painter..color = Colors.blue);
        break;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class MathTools {
  static MathTools _mathTools;
  static bool _flag;

  factory MathTools() {
    if (_flag == null) {
      _flag = true;
    }
    if (_flag) {
      _mathTools = MathTools._internal();
      _flag = false;
    }
    return _mathTools;
  }

  MathTools._internal();

  Path regularStarPath(int num, double R, Offset xy) {
    double degA, degB;
    if (num % 2 == 1) {
      degA = 360 / num / 2 / 2;
      degB = 180 - degA - 360 / num / 2;
    } else {
      degA = 360 / num / 2;
      degB = 180 - degA - 360 / num / 2;
    }
    double r = R * sin(_rad(degA)) / sin(_rad(degB));
    return nStarPath(num, R, r, xy);
  }

  Path regularPolygonPath(int num, double R, Offset xy) {
    double r = R * cos(_rad(360 / num / 2)); //!!一点解决
    return nStarPath(num, R, r, xy);
  }

  Path nStarPath(int num, double R, double r, Offset xy) {
    Path path = Path();
    double perDeg = 360 / num;
    double degA = perDeg / 2 / 2;
    double degB = 360 / (num - 1) / 2 - degA / 2 + degA;
    path.moveTo(cos(_rad(degA)) * R + xy.dx, (-sin(_rad(degA)) * R + xy.dy));
    for (int i = 0; i < num; i++) {
      path.lineTo(cos(_rad(degA + perDeg * i)) * R + xy.dx,
          -sin(_rad(degA + perDeg * i)) * R + xy.dy);
      path.lineTo(cos(_rad(degB + perDeg * i)) * r + xy.dx,
          -sin(_rad(degB + perDeg * i)) * r + xy.dy);
    }
    path.close();
    return path;
  }

  double _rad(double deg) {
    return deg * pi / 180;
  }
}
