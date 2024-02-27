import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insta/MessagesScreen/requestsScreen/requests_screen.dart';

class MessagesRequestBar extends StatelessWidget {
  const MessagesRequestBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Messages"),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RequestsScreen.id);
            },
            child: const Text(
              "Requests",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
