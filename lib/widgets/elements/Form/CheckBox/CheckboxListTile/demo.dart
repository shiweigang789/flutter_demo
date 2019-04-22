import 'package:flutter/material.dart';

// Checkbox 默认的实例
// index 当前checkbox 的索引值
class CheckboxListTileStateDefault extends StatefulWidget {
  const CheckboxListTileStateDefault() : super();

  @override
  _CheckboxListTileStateDefaultState createState() =>
      _CheckboxListTileStateDefaultState();
}

// CheckboxListTile 默认的实例,有状态
class _CheckboxListTileStateDefaultState
    extends State<CheckboxListTileStateDefault> {
  bool _value = false;
  bool isChecked = false;
  List<bool> isChecks = [false, false, false, false];

  void _valueChanged(bool value) {
    for (var i = 0; i < isChecks.length; i++) {
      isChecks[i] = value;
    }
    if (mounted) {
      setState(() => _value = value);
    }
  }

  void _itemValueChanged(int index, bool value) {
    isChecks[index] = value;
    bool state = true;
    for (var i = 0; i < isChecks.length; i++) {
      if (!isChecks[i]) {
        state = false;
        break;
      }
    }
    if (mounted) {
      setState(() => _value = state);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Center(
          child: CheckboxListTile(
            value: _value,
            selected: true,
            onChanged: _valueChanged,
            dense: false,
            isThreeLine: false,
            title: Text('全部'),
            controlAffinity: ListTileControlAffinity.trailing,
            subtitle: Text('勾选下列全部结果'),
            secondary: Icon(Icons.archive),
            activeColor: Colors.red,
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[0],
            title: Text('选项1'),
            selected: _value,
            activeColor: _value ? Colors.red : Colors.green,
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: (bool) {
              if (mounted) {
                setState(() {
                  isChecks[0] = bool;
                  _itemValueChanged(0, bool);
                });
              }
            },
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[1],
            title: Text('选项2'),
            selected: _value,
            activeColor: _value ? Colors.red : Colors.green,
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: (bool) {
              if (mounted) {
                setState(() {
                  isChecks[1] = bool;
                  _itemValueChanged(1, bool);
                });
              }
            },
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[2],
            title: Text('选项3'),
            selected: _value,
            activeColor: _value ? Colors.red : Colors.green,
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: (bool) {
              if (mounted) {
                setState(() {
                  isChecks[2] = bool;
                  _itemValueChanged(2, bool);
                });
              }
            },
          ),
        ),
        Center(
          child: CheckboxListTile(
            value: isChecks[3],
            title: Text('选项4'),
            selected: _value,
            activeColor: _value ? Colors.red : Colors.green,
            controlAffinity: ListTileControlAffinity.platform,
            onChanged: (bool) {
              if (mounted) {
                setState(() {
                  isChecks[3] = bool;
                  _itemValueChanged(3, bool);
                });
              }
            },
          ),
        ),
      ],
    );
  }
}

// CheckboxListTile 默认的实例,无状态
class CheckboxListTileDefault extends StatelessWidget {
  final widget;
  final parent;

  const CheckboxListTileDefault([this.widget, this.parent]) : super();

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text('一个简单的例子'),
      activeColor: Colors.red,
      value: widget.valBool['val'],
      onChanged: (bool value) {
        parent.setState(() => widget.valBool['val'] = value);
      },
      secondary: const Icon(Icons.hourglass_empty),
    );
  }
}
