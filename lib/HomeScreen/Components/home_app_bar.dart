import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../MessagesScreen/messages_screen.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key});

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Expanded(
          flex: 3,
          child: Text(
            "Instagram",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic),
          )),
      Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.camera_alt_outlined),
            const Icon(Ionicons.heart_outline),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MessagesScreen.id);
              },
              child: const Icon(Ionicons.paper_plane_outline),
            ),
          ],
        ),
      ),
    ]);
  }
}
