import 'package:flutter/material.dart';

// 基本示例
class DefaultTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      padding: const EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 20),
      child: Column(
//        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "下面是基本输入框",
            style: TextStyle(
              backgroundColor: Colors.grey,
              wordSpacing: 10,
              fontSize: 20,
              height: 1.2,
              color: Colors.red,
            ),
            textAlign: TextAlign.left,
          ),
          TextField(),
          CustomTextField(),
        ],
      ),
    );
  }
}

/// 稍微复杂些的 TextField
class CustomTextField extends StatelessWidget {
  void _textFieldChanged(String str) {
    print(str);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          icon: Icon(Icons.text_fields),
          labelText: "请输入你的姓名)",
          helperText: "请输入你的真实姓名",
        ),
        onChanged: _textFieldChanged,
        autofocus: true,
      ),
    );
  }
}
