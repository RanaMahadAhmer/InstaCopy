import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.black,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home_outlined, weight: 0.1, size: 30),
            Icon(Icons.search, weight: 0.1, size: 30),
            Icon(Icons.add_box_outlined, weight: 0.1, size: 30),
            Icon(Icons.movie_creation_outlined, weight: 0.1, size: 30),
            Icon(Icons.person_2_outlined, weight: 0.1, size: 30),
          ],
        ),
      ),
    );
  }
}
