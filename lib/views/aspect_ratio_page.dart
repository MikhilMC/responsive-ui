import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/aspect_ratio_widget.dart';

class AspectRatioPage extends StatelessWidget {
  const AspectRatioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            AspectRatioWidget(
              aspectRatio: 16 / 9,
              imageUrl:
                  "https://1.img-dpreview.com/files/p/TS600x600~sample_galleries/7692340468/4258468533.jpg",
            ),
            SizedBox(
              height: 20,
            ),
            AspectRatioWidget(
              aspectRatio: 3 / 2,
              imageUrl:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-G5sNamRjEq_1CigRKoO262yuY6Ftyy2RdQ&s",
            ),
          ],
        ),
      ),
    );
  }
}
