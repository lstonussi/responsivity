import 'package:flutter/material.dart';
import 'package:responsivity/layout_builder/widgets/responsive_widget.dart';

class LayoutBuilderExample2 extends StatelessWidget {
  const LayoutBuilderExample2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Column(
            children: const [
              CardWidget(),
              TextWidget(),
            ],
          ),
          tab: Row(
            children: const [
              CardWidget(),
              SizedBox(width: 24),
              Expanded(child: TextWidget()),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello 👋 \n Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam fringilla, quam sed vehicula gravida. Vivamus pharetra tellus vitae',
      style: TextStyle(fontSize: 22),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
