import 'package:flutter/material.dart';
import 'package:responsivity/layout_builder/layout_builder2.dart';
import 'package:responsivity/widgets/list.dart';

class LayoutBuilderExample extends StatelessWidget {
  LayoutBuilderExample({Key? key}) : super(key: key);

  final appBar = AppBar(title: const Text('Title'));
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBar,
      body: LayoutBuilder(
        builder: (_, contraints) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: contraints.maxWidth,
              height: contraints.maxHeight / 2,
              color: Colors.red,
              child: Column(
                children: [
                  Center(child: Text('$contraints')),
                  const Expanded(
                    child: ListTest(
                      length: 10,
                    ),
                  ),
                ],
              ),
            ),
            const Flexible(
              child: FractionallySizedBox(
                heightFactor: .7,
              ),
            ),
            SingleChildScrollView(
              child: Container(
                width: contraints.constrainHeight(),
                height: contraints.maxHeight / 2,
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text('$contraints'),
                    ),
                    SizedBox(
                      width: size.width * .8,
                      child: TextFormField(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.navigate_next_sharp),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              settings: RouteSettings(
                name: const LayoutBuilderExample2().runtimeType.toString(),
              ),
              builder: (context) => const LayoutBuilderExample2(),
              fullscreenDialog: false,
            ),
          );
        },
      ),
    );
  }
}
