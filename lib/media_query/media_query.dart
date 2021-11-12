import 'package:flutter/material.dart';
import 'package:responsivity/layout_builder/layout_builder2.dart';
import 'package:responsivity/widgets/list.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(title: const Text('Title'));
    final size = MediaQuery.of(context).size;
    //final screenHeight = MediaQuery.of(context).size.height;
    final screenHeight = ((size.height - appBar.preferredSize.height) -
        MediaQuery.of(context).padding.top);

    return Scaffold(
      appBar: appBar,
      body: SizedBox(
        width: size.width,
        height: screenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width,
              height: screenHeight / 2,
              color: Colors.red,
              child: Column(
                children: [
                  Center(child: Text('$screenHeight')),
                  const Expanded(
                      child: ListTest(
                    length: 10,
                  )),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: screenHeight / 2,
              color: Colors.blue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text('$screenHeight'),
                  ),
                  SizedBox(
                    width: size.width * .8,
                    child: TextFormField(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
