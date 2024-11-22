import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  final int flexValue;
  const FlexibleWidget({super.key, required this.flexValue});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: flexValue,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amberAccent,
          border: Border.all(color: Colors.white),
        ),
        child: Text(
          "Flexible $flexValue",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
