import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesFeed extends StatefulWidget {
  const MessagesFeed({super.key});

  @override
  State<MessagesFeed> createState() => _MessagesFeedState();
}

class _MessagesFeedState extends State<MessagesFeed> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rana Mahad Ahmer",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Sent a message 2h",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rana Mahad Ahmer",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text(
                      "Sent a message 2h",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
