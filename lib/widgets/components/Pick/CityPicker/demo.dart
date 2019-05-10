import 'package:city_pickers/city_pickers.dart';
import 'package:flutter/material.dart';

class CityPickerDemo extends StatefulWidget {
  @override
  _CityPickerDemoState createState() => _CityPickerDemoState();
}

class _CityPickerDemoState extends State<CityPickerDemo> {
  String _result;

  show(context) async {
    Result temp = await CityPickers.showCityPicker(
      context: context,
      height: 400,
    );
    setState(() {
      _result = "${temp.toString()}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("result: ${_result.toString()}"),
          RaisedButton(
            onPressed: () {
              this.show(context);
            },
            child: Text("select"),
          ),
        ],
      ),
    );
  }
}
