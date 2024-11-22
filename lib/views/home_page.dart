import 'package:flutter/material.dart';
import 'package:responsive_ui/views/aspect_ratio_page.dart';
import 'package:responsive_ui/views/expanded_and_flexible_page.dart';
import 'package:responsive_ui/views/media_query_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive UI in Flutter"),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const MediaQueryPage(),
              ),
            ),
            child: const Text("Go to Media Query Home"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const ExpandedAndFlexiblePage(),
              ),
            ),
            child: const Text("Go to Expanded and Flexible Home"),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const AspectRatioPage(),
              ),
            ),
            child: const Text("Go to Aspect Ration Home"),
          ),
        ],
      ),
    );
  }
}
