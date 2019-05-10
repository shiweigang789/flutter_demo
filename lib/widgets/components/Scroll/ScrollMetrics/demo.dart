import 'package:flutter/material.dart';

class ScrollMetricsDemo extends StatefulWidget {
  @override
  _ScrollMetricsDemoState createState() => _ScrollMetricsDemoState();
}

class _ScrollMetricsDemoState extends State<ScrollMetricsDemo> {
  String _progress = "0%";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      child: Scrollbar(
          child: NotificationListener(
              onNotification: (ScrollNotification notification) {
                double progress = notification.metrics.pixels /
                    notification.metrics.maxScrollExtent;
                setState(() {
                  _progress = '${(progress * 100).toInt()}%';
                });
              },
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ListView.builder(
                      itemCount: 100,
                      itemExtent: 50.0,
                      itemBuilder: (context, index) {
                        return Container(
                          color: Theme.of(context).primaryColor,
                          margin: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(
                            'test$index',
                            style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        );
                      }),
                  CircleAvatar(
                    radius: 30.0,
                    child: Text(_progress),
                    backgroundColor: Colors.black54,
                  )
                ],
              ))),
    );
  }
}
