import 'package:flutter/material.dart';

class GridTileDemo extends StatefulWidget {
  @override
  _GridTileDemoState createState() => _GridTileDemoState();
}

class _GridTileDemoState extends State<GridTileDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      color: Color(0xffc91b3a),
      child: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 4.0,
        padding: const EdgeInsets.all(4.0),
        childAspectRatio: 1.3,
        children: <Widget>[
          GridTile(
            header:
                Text("GridTile header", style: TextStyle(color: Colors.white)),
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
              child:
                  Text("GridTile child", style: TextStyle(color: Colors.white)),
            ),
            footer:
                Text("GridTile footer", style: TextStyle(color: Colors.white)),
          ),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png',
              scale: 1,
              fit: BoxFit.cover),
        ],
      ),
    );
  }
}
