import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/resources/icon_names.dart' as icon_names;

class CupertinoIconsFullDefault extends StatefulWidget {
  @override
  _CupertinoIconsFullDefaultState createState() =>
      _CupertinoIconsFullDefaultState();
}

class _CupertinoIconsFullDefaultState extends State<CupertinoIconsFullDefault> {
  final colorsList = [];
  final List<Widget> widgetList = [];

  Widget rowView(IconData itA, IconData itB) {
    return Row(
      children: <Widget>[
        Expanded(
            flex: 1,
            child: CupertinoButton(
                padding: EdgeInsets.only(left: 0),
                onPressed: () {},
                child: FlatButton.icon(
                  label: Text('默认按钮', semanticsLabel: 'Add'),
                  icon: Icon(
                    itA,
                    semanticLabel: 'Add',
                  ),
                  onPressed: () {},
                ))),
        Expanded(
            flex: 1,
            child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: FlatButton.icon(
                  label: Text('默认按钮', semanticsLabel: 'Add'),
                  icon: Icon(
                    itB,
                    semanticLabel: 'Add',
                  ),
                  onPressed: () {},
                ))),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    final names = icon_names.CupertinoIIconNames.names;
    for (var i = 0; i < names.length - 2; i++) {
      if (i % 2 == 0) {
        widgetList.add(rowView(names[i], names[i + 1]));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Align(
        child: Column(
            //verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: widgetList));
  }
}
