import 'package:flutter/material.dart';

class BottomNavigationBarFullDefault extends StatefulWidget {
  @override
  _BottomNavigationBarFullDefaultState createState() =>
      _BottomNavigationBarFullDefaultState();
}

class _BottomNavigationBarFullDefaultState
    extends State<BottomNavigationBarFullDefault> {
  int _currentIndex = 1;

  void _onItemTapped(int index) {
    if (mounted) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24.0,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        fixedColor: Colors.deepPurple,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(title: Text("List"), icon: Icon(Icons.list)),
          BottomNavigationBarItem(
              title: Text("Message"), icon: Icon(Icons.message)),
          BottomNavigationBarItem(title: Text("add"), icon: Icon(Icons.add)),
          BottomNavigationBarItem(title: Text("menu"), icon: Icon(Icons.menu)),
          BottomNavigationBarItem(
              title: Text("other"), icon: Icon(Icons.devices_other)),
        ]);
  }
}
