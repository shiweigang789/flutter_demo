import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPageRouteFullDefault extends StatefulWidget {
  @override
  _CupertinoPageRouteFullDefaultState createState() =>
      _CupertinoPageRouteFullDefaultState();
}

class _CupertinoPageRouteFullDefaultState
    extends State<CupertinoPageRouteFullDefault> {
  Widget pageRoute(BuildContext context, int index) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Page 2 of tab $index'),
        ),
        child: Center(
          child: CupertinoButton(
            child: const Text('Back'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: CupertinoApp(
        home: CupertinoTabScaffold(
            tabBar: CupertinoTabBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.share),
                  title: Text('无滑动的切换1'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.share),
                  title: Text('无滑动的切换2'),
                ),
              ],
            ),
            tabBuilder: (BuildContext context, int index) {
              ++index;
              return CupertinoTabView(
                builder: (BuildContext context) {
                  return CupertinoPageScaffold(
                      navigationBar: CupertinoNavigationBar(
                        middle: Text('Page 1 of tab $index'),
                      ),
                      child: Center(
                        child: CupertinoButton(
                          child: const Text('点击我，看滑动动画'),
                          onPressed: () {
                            Navigator.of(context).push(CupertinoPageRoute(
                                builder: (BuildContext context) {
                              return pageRoute(context, index);
                            }));
                          },
                        ),
                      ));
                },
              );
            }),
      ),
    );
  }
}
