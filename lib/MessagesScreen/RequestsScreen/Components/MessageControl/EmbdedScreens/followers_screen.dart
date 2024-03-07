import 'package:flutter/material.dart';
import 'package:insta/MessagesScreen/RequestsScreen/Components/MessageControl/privacy_option.dart';

class FollowersScreen extends StatefulWidget {
  const FollowersScreen({super.key});
  static String id = "FollowersScreen";
  @override
  State<FollowersScreen> createState() => _FollowersScreenState();
}

class _FollowersScreenState extends State<FollowersScreen> {
  bool? receive = true;

  Widget _rowItem({required String title, String? selected}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          Expanded(child: Text(title)),
          if (selected != null) Text(selected),
          const Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PrivacyOption;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Text(args.title),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Deliver requests to"),
            Row(
              children: [
                Expanded(child: Text(args.optionOne)),
                Radio(
                    value: true,
                    groupValue: receive,
                    onChanged: (bool? yes) {
                      setState(() {
                        receive = yes!;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Expanded(child: Text(args.optionTwo)),
                Radio(
                    value: false,
                    groupValue: receive,
                    onChanged: (bool? yes) {
                      setState(() {
                        receive = yes!;
                      });
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
