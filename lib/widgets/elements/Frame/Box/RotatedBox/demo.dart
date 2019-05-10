import 'package:flutter/material.dart';

class RotatedDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RotatedBox(
          quarterTurns: 0,
          child: const Text('Hello Flutter'),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: const Text('Hello Flutter'),
        ),
        RotatedBox(
          quarterTurns: 2,
          child: const Text('Hello Flutter'),
        ),
        RotatedBox(
          quarterTurns: 3,
          child: const Text('Hello Flutter'),
        ),
        RotatedBox(
          quarterTurns: 4,
          child: const Text('Hello Flutter'),
        ),
        RotatedBox(
          quarterTurns: 8,
          child: const Text("Hello Flutter"),
        )
      ],
    );
  }
}
