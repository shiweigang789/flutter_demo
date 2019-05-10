import 'package:flutter/material.dart';

class AlertDialogDemo extends StatelessWidget {
  void showAlertDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('title'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('too long~~~'),
                  Text('too long~~~'),
                  Text('too long~~~'),
                  Text('too long~~~'),
                  Text('too long~~~'),
                  Text('too long~~~'),
                ],
              ),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('关闭'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        child: Text(
          '点我显示 AlertDialog',
          style: TextStyle(
            fontSize: 18.0, //textsize
            color: Colors.white, // textcolor
          ),
        ),
        color: Theme.of(context).accentColor,
        elevation: 4.0,
        //shadow
        splashColor: Colors.blueGrey,
        onPressed: () {
          showAlertDialog(context);
        });
  }
}
