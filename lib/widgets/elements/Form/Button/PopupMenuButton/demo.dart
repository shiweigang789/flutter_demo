import 'package:flutter/material.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class PopupMenuButtonDefault extends StatelessWidget {
  final bool isDisablesd;
  final String type;

  const PopupMenuButtonDefault([this.type = 'default', this.isDisablesd = true])
      : assert(isDisablesd != null),
        super();

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'default1':
        return default1(context);
        break;
      case 'default2':
        return default2(context);
      case 'default3':
        return default3(context);
    }
    return Container();
  }

  Widget default1(BuildContext context) {
    return PopupMenuButton<WhyFarther>(
      onSelected: (WhyFarther result) {},
      itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
            const PopupMenuItem(
              child: Text('Working a lot harder'),
              value: WhyFarther.harder,
            ),
            const PopupMenuItem(
              child: Text('Being a lot smarter'),
              value: WhyFarther.smarter,
            ),
            const PopupMenuItem(
              child: Text('Being a self-starter'),
              value: WhyFarther.selfStarter,
            ),
            const PopupMenuItem(
              child: Text('Placed in chage of trading charter'),
              value: WhyFarther.tradingCharter,
            ),
          ],
    );
  }

  Widget default2(BuildContext context) {
    return PopupMenuButton(
      child: Text('点我试试'),
      onSelected: (String value) {},
      itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            PopupMenuItem(
              child: Text('选项一'),
              value: '选项一的内容',
            ),
            PopupMenuItem(
              child: Text('选项二'),
              value: '选项二的内容',
            ),
          ],
    );
  }

  Widget default3(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.menu),
      onSelected: (String value) {},
      itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            PopupMenuItem(
              child: Text('选项一'),
              value: '选项一的内容',
            ),
            PopupMenuItem(
              child: Text('选项二'),
              value: '选项二的内容',
            )
          ],
    );
  }
}

class PopupMenuButtonCustom extends StatelessWidget {
  final widget;
  final parent;

  const PopupMenuButtonCustom([this.widget, this.parent]) : super();

  @override
  Widget build(BuildContext context) {
    final String selectStr = widget.options['defaultSelect'];
    return PopupMenuButton(
      child: RaisedButton.icon(
        disabledColor: Colors.red,
        onPressed: () {},
        icon: Icon(
          Icons.message,
          size: 25.0,
          color: Colors.yellow,
        ),
        label: Text(
          '自定义按钮',
          style: TextStyle(color: Colors.white),
          semanticsLabel: "FLAT BUTTON",
        ),
      ),
      elevation: 10.0,
      initialValue: selectStr,
      itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
            PopupMenuItem(
              child: Text('选项一'),
              value: "选项一的内容",
            ),
            PopupMenuItem(
              child: Text('选项二'),
              value: "选项二的内容",
            ),
            PopupMenuItem(
              child: Text('选项三'),
              value: "选项三的内容",
            ),
            PopupMenuItem(
              child: Text('选项四'),
              value: "选项四的内容",
            ),
          ],
      offset: Offset(0.0, 50.0),
      onCanceled: () => print('onCanceled'),
      onSelected: (String value) {
        print('onSelected:${parent.setState}');
        parent.setState(() {
          widget.options['defaultSelect'] = value;
        });
      },
      padding: EdgeInsets.only(bottom: 20.0, top: 20.0, left: 0.0, right: 0.0),
      tooltip: '这是信息',
    );
  }
}
