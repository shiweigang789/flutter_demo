import 'package:flutter/material.dart';

class FlexibleSpaceBarLessDefault extends StatelessWidget {
  final widget;
  final parent;

  const FlexibleSpaceBarLessDefault([this.widget, this.parent]) : super();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 300.0,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 150.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text("Collapsing Toolbar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                          )),
                      background: Image.network(
                        "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                        fit: BoxFit.cover,
                      )),
                ),
              ];
            },
            body: Center(
              child: Text("向上提拉 ⬆ 查看效果..."),
            ),
          ),
        ));
  }
}
