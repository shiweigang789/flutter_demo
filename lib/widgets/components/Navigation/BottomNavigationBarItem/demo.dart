import 'package:flutter/material.dart';

class BottomNavigationBarItemLessDefault extends StatelessWidget {
  final widget;
  final parent;

  const BottomNavigationBarItemLessDefault([this.widget, this.parent])
      : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.laptop_chromebook),
              title: Text('主页'),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text("分类"),
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_grocery_store), title: Text("购物车")),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("我的"))
        ]),
      ),
    );
  }
}
