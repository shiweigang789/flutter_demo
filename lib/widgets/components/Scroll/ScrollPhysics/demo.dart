import 'package:flutter/material.dart';

class ScrollPhysicsDemo extends StatefulWidget {
  @override
  _ScrollPhysicsDemoState createState() => _ScrollPhysicsDemoState();
}

class _ScrollPhysicsDemoState extends State<ScrollPhysicsDemo> {
  final PageController _pageController = PageController();
  double _currentPage = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      child: LayoutBuilder(
          builder: (context, constraints) => NotificationListener(
                onNotification: (ScrollNotification notification) {
                  setState(() {
                    _currentPage = _pageController.page;
                  });
                },
                child: PageView.custom(
                  physics: const PageScrollPhysics(
                      parent: const BouncingScrollPhysics()),
                  controller: _pageController,
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => _SimplePage(
                          '$index',
                          parallaxOffset: constraints.maxWidth /
                              2.0 *
                              (index - _currentPage),
                        ),
                    childCount: 10,
                  ),
                ),
              )),
    );
  }
}

class _SimplePage extends StatelessWidget {
  _SimplePage(this.data, {Key key, this.parallaxOffset = 0.0})
      : super(key: key);

  final String data;
  final double parallaxOffset;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              data,
              style: const TextStyle(fontSize: 60.0, color: Colors.white),
            ),
            SizedBox(height: 40.0),
            Transform(
              transform: Matrix4.translationValues(parallaxOffset, 0.0, 0.0),
              child: const Text(
                '左右滑动，这是第二行滚动速度更快的小字',
                style: const TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
