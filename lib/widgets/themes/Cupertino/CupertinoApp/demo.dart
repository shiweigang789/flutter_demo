import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoAppFullDefault extends StatefulWidget {
  @override
  _CupertinoAppFullDefaultState createState() =>
      _CupertinoAppFullDefaultState();
}

class _CupertinoAppFullDefaultState extends State<CupertinoAppFullDefault> {
  routerHandler(setting) {
    return PageRouteBuilder(
        pageBuilder: (BuildContext context, _, __) {
          return HomePage();
        },
        opaque: false,
        transitionDuration: Duration(milliseconds: 200),
        transitionsBuilder:
            (___, Animation<double> animation, ____, Widget child) {
          return FadeTransition(
            opacity: animation,
            child: ScaleTransition(
              scale: Tween(begin: 0.5, end: 1.0).animate(animation),
              child: child,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: CupertinoApp(
        title: '这里是标题',
        builder: (BuildContext context, Widget child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.4),
            child: child,
          );
        },
        checkerboardOffscreenLayers: false,
        checkerboardRasterCacheImages: false,
        debugShowCheckedModeBanner: true,
        color: Colors.red,
        home: CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              leading: Icon(CupertinoIcons.back),
              middle: Text('Title'),
              trailing: Icon(CupertinoIcons.share),
            ),
            child: Container(
                padding: const EdgeInsets.only(bottom: 60.0),
                alignment: Alignment.center,
                child: Text('这里是 home 属性对应的内容',
                    style: TextStyle(color: Colors.black)))),
        initialRoute: '/home',
        locale: Locale('zh', 'CH'),
        localeListResolutionCallback: (local, support) {
          return const Locale('us', 'uk');
        },
        localizationsDelegates: [],
        navigatorKey: GlobalKey(),
        navigatorObservers: [
          MyObserver(),
        ],
        onGenerateRoute: (setting) {
          routerHandler(setting);
        },
        onGenerateTitle: (context) {
          return 'Flutter应用';
        },
        onUnknownRoute: (setting) {},
        routes: {
          '/home': (BuildContext context) => HomePage(),
          '/home/one': (BuildContext context) => OnePage(),
        },
        showPerformanceOverlay: false,
        showSemanticsDebugger: false,
        supportedLocales: [
          const Locale('uok'),
          const Locale('meg'),
        ],
      ),
    );
  }

  Widget homeBuild(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/btn_icon_dingyuehao_normal.png')),
              title: Text('Tab 1'),
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                  AssetImage('assets/images/btn_icon_dingyuehao_normal.png')),
              title: Text('Tab 2'),
            ),
          ]),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            backgroundColor: CupertinoColors.destructiveRed,
            middle: Text('这里是标题', style: TextStyle(color: Colors.white)),
          ),
          child: Center(
              child: Text('这里是内容', style: TextStyle(color: Colors.black))),
          backgroundColor: CupertinoColors.inactiveGray,
        );
      },
    );
  }
}

class MyObserver extends NavigatorObserver {
  @override
  void didPush(Route route, Route previousRoute) {
    super.didPush(route, previousRoute);
    print('MyObserver 路由观察器:${route.settings.name}');
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text('HomePage', style: TextStyle(color: Colors.black)));
  }
}

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('OnePage', style: TextStyle(color: Colors.red)));
  }
}
