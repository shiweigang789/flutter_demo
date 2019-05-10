import 'package:flutter/material.dart';

class CardLessDefault extends StatelessWidget {
  final widget;
  final parent;

  const CardLessDefault([this.widget, this.parent]) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      color: Colors.green,
      elevation: 20.0,
      margin: EdgeInsets.all(20.0),
      semanticContainer: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const ListTile(
            leading: Icon(Icons.access_time),
            title: Text('The Enchanted Nightingale',
                style: TextStyle(color: Colors.white, fontSize: 40.0)),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.',
                style: TextStyle(color: Colors.yellow, fontSize: 16.0)),
            contentPadding: EdgeInsets.all(20.0), // item 内容内边距
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: const Text('BUY TICKETS',
                      style: TextStyle(color: Colors.black, fontSize: 14.0)),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text('LISTEN',
                      style: TextStyle(color: Colors.black, fontSize: 14.0)),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
