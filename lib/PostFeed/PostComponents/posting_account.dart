import 'package:flutter/material.dart';

class PostingAccount extends StatefulWidget {
  const PostingAccount({super.key});

  @override
  State<PostingAccount> createState() => _PostingAccountState();
}

class _PostingAccountState extends State<PostingAccount> {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      leading: CircleAvatar(
        radius: 23,
        backgroundColor: Colors.deepOrange,
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Rana Mahad Ahmer",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Hope To See You Again",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
      trailing: Icon(Icons.more_vert_outlined),
    );
  }
}
