import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class PostBottomActionButtons extends StatefulWidget {
  const PostBottomActionButtons({super.key});

  @override
  State<PostBottomActionButtons> createState() =>
      _PostBottomActionButtonsState();
}

class _PostBottomActionButtonsState extends State<PostBottomActionButtons> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 14.0),
                  child: Icon(
                    Ionicons.heart_outline,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14.0),
                  child: Icon(
                    Icons.messenger_outline,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14.0),
                  child: Icon(
                    Ionicons.paper_plane_outline,
                    size: 30,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14.0),
                  child: Icon(
                    Ionicons.logo_whatsapp,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 14.0),
            child: Icon(
              Icons.bookmark_border,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
