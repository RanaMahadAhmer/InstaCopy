import 'package:flutter/material.dart';
import 'package:insta/MessagesScreen/RequestsScreen/Components/MessageControl/EmbdedScreens/followers_screen.dart';
import 'package:insta/MessagesScreen/RequestsScreen/Components/MessageControl/message_control_screen.dart';

import 'package:insta/MessagesScreen/messages_screen.dart';
import 'package:insta/MessagesScreen/requestsScreen/requests_screen.dart';

import 'HomeScreen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(useMaterial3: true),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        MessagesScreen.id: (context) => const MessagesScreen(),
        RequestsScreen.id: (context) => const RequestsScreen(),
        MessageControlScreen.id: (context) => const MessageControlScreen(),
        FollowersScreen.id: (context) => const FollowersScreen(),
      },
    );
  }
}
