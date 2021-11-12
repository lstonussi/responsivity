import 'package:flutter/material.dart';
import 'package:responsivity/aspect_ratio/aspect_ratio.dart';
import 'package:responsivity/basic_example/home1.dart';
import 'package:responsivity/flexible_expanded/exp_flex.dart';
import 'package:responsivity/fractionally_sized_widget/fractionally_sized_widget.dart';
import 'package:responsivity/layout_builder/layout_builder.dart';
import 'package:responsivity/media_query/media_query.dart';

class HomeOfHomes extends StatelessWidget {
  const HomeOfHomes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: const BasicExample().runtimeType.toString(),
                    ),
                    builder: (context) => const BasicExample(),
                  ),
                );
              },
              child: const Text('Home'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: const MediaQueryExample().runtimeType.toString(),
                    ),
                    builder: (context) => const MediaQueryExample(),
                  ),
                );
              },
              child: const Text('MediaQuery'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: LayoutBuilderExample().runtimeType.toString(),
                    ),
                    builder: (context) => LayoutBuilderExample(),
                  ),
                );
              },
              child: const Text('LayoutBuilder'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: const HomePageExpFlex().runtimeType.toString(),
                    ),
                    builder: (context) => const HomePageExpFlex(),
                  ),
                );
              },
              child: const Text('Expanded & Flexible'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: const AspectRatioLayout().runtimeType.toString(),
                    ),
                    builder: (context) => const AspectRatioLayout(),
                  ),
                );
              },
              child: const Text('AspectRatioLayout'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    settings: RouteSettings(
                      name: const Fractionally().runtimeType.toString(),
                    ),
                    builder: (context) => const Fractionally(),
                  ),
                );
              },
              child: const Text('Fractionally'),
            ),
          ],
        ),
      ),
    );
  }
}
