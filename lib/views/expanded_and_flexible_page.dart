import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/expanded_widgtet.dart';
import 'package:responsive_ui/widgets/flexible_widget.dart';

class ExpandedAndFlexiblePage extends StatelessWidget {
  const ExpandedAndFlexiblePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded And Flexible Example"),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                ExpandedWidgtet(),
                FlexibleWidget(
                  flexValue: 1,
                ),
              ],
            ),
            Row(
              children: [
                ExpandedWidgtet(),
                ExpandedWidgtet(),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(
                  flexValue: 1,
                ),
                FlexibleWidget(
                  flexValue: 2,
                ),
              ],
            ),
            Row(
              children: [
                FlexibleWidget(
                  flexValue: 3,
                ),
                ExpandedWidgtet(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
