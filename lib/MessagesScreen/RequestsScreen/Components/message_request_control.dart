import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/MessagesScreen/RequestsScreen/Components/MessageControl/message_control_screen.dart';

class MessageRequestControl extends StatefulWidget {
  const MessageRequestControl({super.key});

  @override
  State<MessageRequestControl> createState() => _MessageRequestControlState();
}

class _MessageRequestControlState extends State<MessageRequestControl> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Requests aren't marked as seen until you accept them.",
          style: TextStyle(fontSize: 12),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, MessageControlScreen.id);
          },
          child: const Text(
            "Choose who can message you",
            style: TextStyle(color: Colors.blueAccent, fontSize: 12),
          ),
        ),
      ],
    );
  }
}
