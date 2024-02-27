import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class PostInfo extends StatefulWidget {
  const PostInfo({super.key});

  @override
  State<PostInfo> createState() => _PostInfoState();
}

class _PostInfoState extends State<PostInfo> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("6,505 likes"),
          ReadMoreText(
            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
            trimLines: 1,
            colorClickableText: Colors.pink,
            trimMode: TrimMode.Line,
            trimCollapsedText: 'more',
            trimExpandedText: '',
            moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            "View All 51 comments",
            style: TextStyle(color: Colors.white54),
          ),
          Text(
            "5 hours ago",
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
