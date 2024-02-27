import 'package:flutter/material.dart';

class MessagesAppBar extends StatelessWidget {
  const MessagesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Messages"),
          Icon(
            Icons.edit_square,
            weight: 0.01,
          ),
        ],
      ),
    );
  }
}
