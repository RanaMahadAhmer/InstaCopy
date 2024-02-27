import 'package:flutter/material.dart';

import 'story.dart';

class StoryFeed extends StatefulWidget {
  const StoryFeed({super.key});

  @override
  State<StoryFeed> createState() => _StoryFeedState();
}

class _StoryFeedState extends State<StoryFeed> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const Story(),
          for (int x = 0; x < 10; x++) const Story(),
        ],
      ),
    );
  }
}
