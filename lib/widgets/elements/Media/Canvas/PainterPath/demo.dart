import 'package:flutter/material.dart';

CustomPainter graph;

class CustomViewPage extends StatefulWidget {
  final String type;

  CustomViewPage({this.type = 'simpleline'}) : super();

  @override
  _CustomViewPageState createState() => _CustomViewPageState();
}

class _CustomViewPageState extends State<CustomViewPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class DrawPainter extends CustomPainter {
  Paint painter;
  final type;

  DrawPainter({this.type}) {
    painter = Paint()
      ..color = Colors.blueAccent
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0
      ..isAntiAlias = true
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    drawThisPath(canvas, size, path);
    path.close();
    canvas.drawPath(path, painter);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

  void drawThisPath(Canvas canvas, Size size, Path path) {
    switch (type) {
      case 'simpleline':
        Path path = Path()..moveTo(0.0, 0.0);
        path.lineTo(200.0, 200.0);
        canvas.drawPath(path, painter);
        break;
      case 'polyline':
        Path path = Path()..moveTo(100.0, 10.0);
        path.lineTo(200.0, 150.0);
        path.lineTo(100.0, 200.0);
        canvas.drawPath(path, painter);
        break;
      case 'Besizerline2':
        Path path = Path()..moveTo(0.0, 0.0);
        Rect rect1 = Rect.fromCircle(center: Offset(50.0, 100.0), radius: 60.0);
        path.arcTo(rect1, 0.0, 3.14, false);
        canvas.drawPath(path, painter);

        Rect rect2 =
            Rect.fromCircle(center: Offset(200.0, 100.0), radius: 60.0);
        path.arcTo(rect2, 0.0, 3.14 * 2, true);
        canvas.drawPath(path, painter);
        break;
      case 'Besizerline3':
        var width = size.width;
        var height = 300;
        Path path = Path()..moveTo(width / 2, height / 4);
        path.cubicTo(width * 6 / 7, height / 9, width * 13 / 13, height * 2 / 5,
            width / 2, height * 7 / 12);
        canvas.drawPath(path, painter);
        Path path2 = Path();
        path2.moveTo(width / 2, height / 4);
        path2.cubicTo(width / 7, height / 9, width / 21, height * 2 / 5,
            width / 2, height * 7 / 12);
        canvas.drawPath(path2, painter);
        break;
      case 'drawArc':
        // 绘制圆弧
        // Rect来确认圆弧的位置，还需要开始的弧度、结束的弧度、是否使用中心点绘制、以及paint弧度
        const PI = 3.1415926;
        Rect rect1 =
            Rect.fromCircle(center: Offset(size.width / 2, 0.0), radius: 100.0);
        canvas.drawArc(rect1, 0.0, PI / 2, false, painter..color = Colors.pink);

        Rect rect2 = Rect.fromCircle(
            center: Offset(size.width / 2, 150.0), radius: 100.0);
        canvas.drawArc(
            rect2, 0.0, PI / 2, true, painter..color = Colors.deepPurple);
        break;
      case 'drawRRect':

        /// fromPoints(Offset a, Offset b)
        /// 使用左上和右下角坐标来确定矩形的大小和位置
        /// fromCircle({ Offset center, double radius })
        /// 使用圆的圆心点坐标和半径和确定外切矩形的大小和位置
        /// fromLTRB(double left, double top, double right, double bottom)
        /// 使用矩形左边的X坐标、矩形顶部的Y坐标、矩形右边的X坐标、矩形底部的Y坐标来确定矩形的大小和位置
        /// fromLTWH(double left, double top, double width, double height)
        /// 使用矩形左边的X坐标、矩形顶部的Y坐标矩形的宽高来确定矩形的大小和位置
        // 用Rect构建一个边长50,中心点坐标为50,100的矩形
        Rect rect1 = Rect.fromCircle(center: Offset(50.0, 50.0), radius: 50.0);
        Rect rect2 = Rect.fromCircle(center: Offset(200.0, 50.0), radius: 50.0);
        // 根据上面的矩形,构建一个圆角矩形
        RRect rrect1 = RRect.fromRectAndRadius(rect1, Radius.circular(0.0));
        canvas.drawRRect(rrect1, painter);
        RRect rrect2 = RRect.fromRectAndRadius(rect2, Radius.circular(20.0));
        canvas.drawRRect(rrect2, painter);
        break;
      case 'drawDRRect':
        //绘制两个矩形
        Rect rect1 = Rect.fromCircle(
            center: Offset(size.width / 2, 100.0), radius: 60.0);
        Rect rect2 = Rect.fromCircle(
            center: Offset(size.width / 2, 100.0), radius: 40.0);
        //分别绘制外部圆角矩形和内部的圆角矩形
        RRect outer = RRect.fromRectAndRadius(rect1, Radius.circular(30.0));
        RRect inner = RRect.fromRectAndRadius(rect2, Radius.circular(5.0));
        canvas.drawDRRect(outer, inner, painter..color = Colors.lime);
        break;
    }
  }
}
