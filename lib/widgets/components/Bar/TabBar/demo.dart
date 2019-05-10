import 'package:flutter/material.dart';

class TabBarDemo extends StatefulWidget {
  @override
  _TabBarDemoState createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollViewController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollViewController = ScrollController();
    _tabController =
        TabController(vsync: this, length: 6); // 和下面的 TabBar.tabs 数量对应
  }

  @override
  void dispose() {
    _scrollViewController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar'),
          leading: Icon(Icons.home),
          backgroundColor: Colors.amber[1000],
          bottom: TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: <Widget>[
                Tab(text: "Tabs 1"),
                Tab(text: "Tabs 2"),
                Tab(text: "Tabs 3"),
                Tab(text: "Tabs 4"),
                Tab(text: "Tabs 5"),
                Tab(text: "Tabs 6"),
              ]),
        ),
        body: TabBarView(controller: _tabController, children: <Widget>[
          Text('TabsView 1'),
          Text('TabsView 2'),
          Text('TabsView 3'),
          Text('TabsView 4'),
          Text('TabsView 5'),
          Text('TabsView 6'),
        ]),
      ),
    );
  }
}
