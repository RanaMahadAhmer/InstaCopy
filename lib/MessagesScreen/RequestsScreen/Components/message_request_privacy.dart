import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageRequestPrivacy extends StatefulWidget {
  const MessageRequestPrivacy({super.key});

  @override
  State<MessageRequestPrivacy> createState() => _MessageRequestPrivacyState();
}

class _MessageRequestPrivacyState extends State<MessageRequestPrivacy> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Requests aren't marked as seen until you accept them.",
          style: TextStyle(fontSize: 12),
        ),
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Choose who can message you",
            style: TextStyle(color: Colors.blueAccent, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
