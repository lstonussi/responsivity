import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    Key? key,
    required this.mobile,
    required this.tab,
  }) : super(key: key);

  final Widget mobile;
  final Widget tab;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        if (constraints.maxWidth < 500) {
          return mobile;
        } else {
          return tab;
        }
      },
    );
  }
}
