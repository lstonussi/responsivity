import 'package:flutter/material.dart';
import 'package:responsivity/flexible_expanded/flexible_example2.dart';
import 'package:responsivity/flexible_expanded/widgets/expanded_widget.dart';
import 'package:responsivity/flexible_expanded/widgets/flexible_widget.dart';

class HomePageExpFlex extends StatelessWidget {
  const HomePageExpFlex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              children: const [
                ExpandedWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: const [
                ExpandedWidget(),
                ExpandedWidget(),
              ],
            ),
            Row(
              children: const [
                FlexibleWidget(),
                FlexibleWidget(),
              ],
            ),
            Row(
              children: const [
                FlexibleWidget(),
                ExpandedWidget(),
              ],
            ),
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
                name: const FlexibleExample2().runtimeType.toString(),
              ),
              builder: (context) => const FlexibleExample2(),
              fullscreenDialog: false,
            ),
          );
        },
      ),
    );
  }
}
