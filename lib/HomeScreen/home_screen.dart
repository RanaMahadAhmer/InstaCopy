import 'package:flutter/material.dart';
import '../BottomBar/bottom_bar.dart';
import '../PostFeed/post_feed.dart';
import 'Components/home_app_bar.dart';
import 'StoryFeed/story_feed.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyAppBar(),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            StoryFeed(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: PostFeed(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
