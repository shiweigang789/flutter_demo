import 'package:flutter/material.dart';

var selectItValue;
var selectItemValue;

class DropdownButtonDefault extends StatelessWidget {
  List<DropdownMenuItem> generateItemList() {
    final List<DropdownMenuItem> items = List();
    final DropdownMenuItem item1 = DropdownMenuItem(
      child: Text('张三'),
      value: '张三',
    );
    final DropdownMenuItem item2 = DropdownMenuItem(
      child: Text('李四'),
      value: '李四',
    );
    final DropdownMenuItem item3 = DropdownMenuItem(
      child: Text('王二'),
      value: '王二',
    );
    final DropdownMenuItem item4 = DropdownMenuItem(
      child: Text('麻子'),
      value: '麻子',
    );
    items.add(item1);
    items.add(item2);
    items.add(item3);
    items.add(item4);
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      hint: Text('下拉菜单选择一个人名'),
      items: generateItemList(),
      onChanged: (T) {},
      value: selectItValue,
    );
  }
}

List<DropdownMenuItem> getListData() {
  List<DropdownMenuItem> items = List();
  DropdownMenuItem dropdownMenuItem1 = DropdownMenuItem(
    child: Text('1'),
    value: '1',
  );
  items.add(dropdownMenuItem1);
  DropdownMenuItem dropdownMenuItem2 = DropdownMenuItem(
    child: Text('2'),
    value: '2',
  );
  items.add(dropdownMenuItem2);
  DropdownMenuItem dropdownMenuItem3 = DropdownMenuItem(
    child: Text('3'),
    value: '3',
  );
  items.add(dropdownMenuItem3);
  DropdownMenuItem dropdownMenuItem4 = DropdownMenuItem(
    child: Text('4'),
    value: '4',
  );
  items.add(dropdownMenuItem4);
  DropdownMenuItem dropdownMenuItem5 = DropdownMenuItem(
    child: Text('5'),
    value: '5',
  );
  items.add(dropdownMenuItem5);
  DropdownMenuItem dropdownMenuItem6 = DropdownMenuItem(
    child: Text('6'),
    value: '6',
  );
  items.add(dropdownMenuItem6);
  DropdownMenuItem dropdownMenuItem7 = DropdownMenuItem(
    child: Text('7'),
    value: '7',
  );
  items.add(dropdownMenuItem7);
  DropdownMenuItem dropdownMenuItem8 = DropdownMenuItem(
    child: Text('8'),
    value: '8',
  );
  items.add(dropdownMenuItem8);
  DropdownMenuItem dropdownMenuItem9 = DropdownMenuItem(
    child: Text('9'),
    value: '9',
  );
  items.add(dropdownMenuItem9);
  DropdownMenuItem dropdownMenuItem10 = DropdownMenuItem(
    child: Text('10'),
    value: '10',
  );
  items.add(dropdownMenuItem10);
  return items;
}

class DropdownButtonCustom extends StatelessWidget {
  final widget;
  final parent;

  const DropdownButtonCustom([this.widget, this.parent]) : super();

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      items: getListData(),
      onChanged: (T) {
        if (parent.mounted) {
          parent.setState(() {
            selectItValue = T;
          });
        }
      },
      hint: Text('下拉选择你想要的数据'),
      value: selectItemValue,
      elevation: 24,
      style: TextStyle(color: Colors.red),
      isExpanded: true,
      iconSize: 50.0,
    );
  }
}
