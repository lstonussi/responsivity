import 'package:flutter/material.dart';

class BasicExample extends StatelessWidget {
  const BasicExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * .3,
              height: MediaQuery.of(context).size.height * .3,
              color: Colors.red,
              child: Text(
                  'width: ${MediaQuery.of(context).size.width * .3} height: ${MediaQuery.of(context).size.height * .3}'),
            ),
          )
        ],
      ),
    );
  }
}
