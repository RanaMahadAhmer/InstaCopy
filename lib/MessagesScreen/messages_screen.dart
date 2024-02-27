import 'package:flutter/material.dart';
import 'package:insta/MessagesScreen/Components/messages_request_bar.dart';
import 'package:insta/MessagesScreen/Components/messages_search_bar.dart';
import 'package:insta/MessagesScreen/MessagesFeed/messages_feed.dart';

import 'Components/messages_app_bar.dart';

class MessagesScreen extends StatefulWidget {
  static const String id = "MessagesScreen";
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const MessagesAppBar(),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          children: [
            MySearchBar(),
            MessagesRequestBar(),
            MessagesFeed(),
          ],
        ),
      ),
    );
  }
}
