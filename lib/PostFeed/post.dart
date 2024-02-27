import 'package:flutter/material.dart';
import 'package:insta/PostFeed/PostComponents/post_bottom_action_buttons.dart';
import 'package:insta/PostFeed/PostComponents/post_info.dart';
import 'package:insta/PostFeed/PostComponents/posting_account.dart';

class Post extends StatefulWidget {
  const Post({super.key});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PostingAccount(),
        ColoredBox(
          color: Colors.white,
          child: SizedBox(
            height: 500,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        const PostBottomActionButtons(),
        const PostInfo(),
      ],
    );
  }
}
