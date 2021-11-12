import 'package:flutter/material.dart';

class ListTest extends StatelessWidget {
  const ListTest({
    Key? key,
    required this.length,
  }) : super(key: key);

  final int length;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        length,
        (index) => Card(
          child: ListTile(
            title: Text("List Item $index"),
          ),
        ),
      ),
      padding: const EdgeInsets.all(10),
    );
  }
}
