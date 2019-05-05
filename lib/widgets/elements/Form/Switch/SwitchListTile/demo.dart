import 'package:flutter/material.dart';

class SwitchListTileDemo extends StatefulWidget {
  @override
  _SwitchListTileDemoState createState() => _SwitchListTileDemoState();
}

class _SwitchListTileDemoState extends State<SwitchListTileDemo> {
  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: const Text('Lights'),
      value: _lights,
      onChanged: (bool val) {
        setState(() {
          _lights = val;
        });
      },
      secondary: const Icon(Icons.lightbulb_outline),
    );
  }
}
