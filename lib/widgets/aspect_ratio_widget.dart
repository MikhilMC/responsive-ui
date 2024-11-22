import 'package:flutter/material.dart';

class AspectRatioWidget extends StatelessWidget {
  final double aspectRatio;
  final String imageUrl;
  const AspectRatioWidget({
    super.key,
    required this.aspectRatio,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 5,
                style: BorderStyle.solid,
              ),
              image: DecorationImage(
                image: NetworkImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Text(
              "Aspect Ratio: ${aspectRatio.toStringAsFixed(2)}",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
