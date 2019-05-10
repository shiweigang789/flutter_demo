import 'package:flutter/material.dart';

class AppBarLessDefaultComplex extends StatefulWidget {
  @override
  _AppBarLessDefaultComplexState createState() =>
      _AppBarLessDefaultComplexState();
}

class _AppBarLessDefaultComplexState extends State<AppBarLessDefaultComplex>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController;
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _tabController = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: AppBar(
        title: Text('title'),
        leading: Icon(Icons.home),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alarm),
            onPressed: () {},
            tooltip: 'Add Alarm',
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => [
                  PopupMenuItem(
                    value: 'price',
                    child: Text('Sort by price'),
                  ),
                  PopupMenuItem(
                    child: Text('Sort by time'),
                    value: 'time',
                  )
                ],
            onSelected: (String action) {
              switch (action) {
                case 'price':
                  break;
                case 'time':
                  break;
              }
            },
          ),
        ],
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
    );
  }
}

class AppBarLessDefaultSimple extends StatelessWidget {
  final widget;
  final parent;

  const AppBarLessDefaultSimple([this.widget, this.parent]) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: AppBar(
          title: Text('My Fancy Dress'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.playlist_play),
              tooltip: 'Air it',
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.playlist_add),
              tooltip: 'Restitch it',
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.playlist_add_check),
              tooltip: 'Repair it',
              onPressed: () => {},
            ),
          ],
        ));
  }
}
