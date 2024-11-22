import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query Home"),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Center(
          child: Text(
            "View\n\n[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n[MediaQuery height]: ${screenSize.height.toStringAsFixed(2)}\n\n[MediaQuery orientation]: $orientation\n\n",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
