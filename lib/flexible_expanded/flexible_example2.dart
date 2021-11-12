import 'package:flutter/material.dart';

class FlexibleExample2 extends StatelessWidget {
  const FlexibleExample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            //fit: FlexFit.tight,
            flex: 2,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
