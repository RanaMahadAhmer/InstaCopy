import 'package:flutter/material.dart';

import 'post.dart';

class PostFeed extends StatefulWidget {
  const PostFeed({super.key});

  @override
  State<PostFeed> createState() => _PostFeedState();
}

class _PostFeedState extends State<PostFeed> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Post(),
        Post(),
      ],
    );
  }
}
