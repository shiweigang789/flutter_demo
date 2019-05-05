import 'package:flutter/material.dart';

class FloatingActionButtonDefault extends StatelessWidget {
  final bool isDisabled;

  const FloatingActionButtonDefault([this.isDisabled])
      : assert(isDisabled != null),
        super();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: isDisabled ? () {} : null,
      backgroundColor: Colors.red,
      child: const Icon(Icons.add),
      heroTag: null,
    );
  }
}

class FloatingActionButtonCustom extends StatelessWidget {
  final String txt;
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onPressed;

  const FloatingActionButtonCustom([
    this.txt = '自定义按钮',
    this.color = Colors.orange,
    this.shape,
    this.onPressed,
  ]) : super();

  @override
  Widget build(BuildContext context) {
    final _onPressed = (onPressed is Function) ? onPressed : () {};
    return FloatingActionButton(
      onPressed: () {
        Scaffold.of(context).showSnackBar(SnackBar(
          content: Text("FAB is Cliced"),
        ));
        _onPressed;
      },
      child: const Icon(Icons.refresh),
      tooltip: txt,
      foregroundColor: Colors.white,
      heroTag: null,
      elevation: 7.0,
      highlightElevation: 14.0,
      mini: false,
      shape: shape,
      isExtended: true,
    );
  }
}

class FloatingActionButtonCustom2 extends StatelessWidget {
  final String txt;
  final Color color;
  final ShapeBorder shape;
  final VoidCallback onOPressed;

  const FloatingActionButtonCustom2([
    this.txt = "自定义按钮",
    this.color,
    this.shape,
    this.onOPressed,
  ]) : super();

  @override
  Widget build(BuildContext context) {
    final _onPressed = onOPressed;
    return FloatingActionButton.extended(
      onPressed: () {
        print("button click");
        _onPressed();
      },
      icon: Icon(
        Icons.flag,
        color: Colors.red,
      ),
      label: Text(
        "FloatingActionButton.extended",
        maxLines: 1,
      ),
      backgroundColor: Colors.amber,
      foregroundColor: Colors.white,
    );
  }
}
