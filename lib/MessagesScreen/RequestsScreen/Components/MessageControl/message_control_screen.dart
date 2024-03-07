import 'package:flutter/material.dart';
import 'package:insta/MessagesScreen/RequestsScreen/Components/MessageControl/EmbdedScreens/followers_screen.dart';
import 'package:insta/MessagesScreen/RequestsScreen/Components/MessageControl/privacy_option.dart';

class MessageControlScreen extends StatefulWidget {
  const MessageControlScreen({super.key});
  static String id = "MessageControlScreen";
  @override
  State<MessageControlScreen> createState() => _MessageControlScreenState();
}

class _MessageControlScreenState extends State<MessageControlScreen> {
  Widget _paddedHeadings(
      {required String title,
      double top = 0.0,
      double bottom = 0.0,
      required bool styled}) {
    return Padding(
      padding: EdgeInsets.only(top: top, bottom: bottom),
      child: Text(
        title,
        style: styled
            ? const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            : null,
      ),
    );
  }

  Widget _rowItem({required String title, String? selected}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, FollowersScreen.id,
                  arguments: PrivacyOption(
                      title: "Deliver requests to",
                      optionOne: "Message requests",
                      optionTwo: "Message requests"));
            },
            child: Row(
              children: [
                if (selected != null) Text(selected),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: const Text("Message Controls"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _paddedHeadings(
                title:
                    "Decide which folder you'll receive message requests to, or whether to receive them at all.",
                top: 8,
                bottom: 8,
                styled: false),
            _paddedHeadings(
                title: "Potential connections", bottom: 8.0, styled: true),
            _rowItem(
                title: "Your followers on instagram", selected: "Requests"),
            _paddedHeadings(title: "Other People", bottom: 8.0, styled: true),
            _rowItem(title: "Others on instagram", selected: "Requests"),
            _paddedHeadings(title: "Group settings", bottom: 8.0, styled: true),
            _rowItem(title: "Who can add you to groups"),
            _paddedHeadings(
                title:
                    "Not all messages are request: accounts you follow, for example, can send messages to your Chats list. Learn more about who can message you.",
                styled: false),
          ],
        ),
      ),
    );
  }
}
