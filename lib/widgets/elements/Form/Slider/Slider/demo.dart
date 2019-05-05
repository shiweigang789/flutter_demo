import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: value,
      inactiveColor: Colors.black12,
      label: 'value:$value',
      min: 0.0,
      max: 100.0,
      divisions: 1000,
      activeColor: Colors.blue,
      onChanged: (double) {
        setState(() {
          value = double.roundToDouble();
        });
      },
    );
  }
}

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
          thumbColor: Colors.black,
          inactiveTrackColor: Colors.red,
          valueIndicatorColor: Colors.blue,
          valueIndicatorTextStyle: TextStyle(color: Colors.white),
          inactiveTickMarkColor: Colors.blue,
          overlayColor: Colors.pink,
        ),
        child: Container(
          width: 340.0,
          margin: EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: Row(
            children: <Widget>[
              Text("0.0"),
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
              Text("100.0"),
            ],
          ),
        ),
      ),
    );
  }
}
