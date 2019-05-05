import 'package:flutter/material.dart';

class SliderThemeDemo extends StatefulWidget {
  @override
  _SliderThemeDemoState createState() => _SliderThemeDemoState();
}

class _SliderThemeDemoState extends State<SliderThemeDemo> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          activeTrackColor: Colors.yellowAccent,
          thumbColor: Colors.blue,
          inactiveTrackColor: Colors.red,
          valueIndicatorColor: Colors.blue,
          valueIndicatorTextStyle: TextStyle(
            color: Colors.white,
          ),
          inactiveTickMarkColor: Colors.blue,
          overlayColor: Colors.pink,
        ),
        child: Container(
          width: 340.0,
          margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: Row(
            children: <Widget>[
              Text('0.0'),
              Expanded(
                flex: 1,
                child: Slider(
                  value: value,
                  label: '$value',
                  divisions: 10,
                  onChanged: (double) {
                    setState(() {
                      value = double.floorToDouble();
                    });
                  },
                  min: 0.0,
                  max: 100.0,
                ),
              ),
              Text('100.0'),
            ],
          ),
        ),
      ),
    );
  }
}
