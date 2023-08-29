import 'package:chat_app/screens/messages/widget/body.dart';
import 'package:flutter/material.dart';

import '../../models/user_profile_model.dart';

class MessageScreen extends StatefulWidget {
  final List<UserProfileModel> userProfileData;
  final int index;
  const MessageScreen(
      {super.key, required this.userProfileData, required this.index});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.green,
      automaticallyImplyLeading: false,
      title: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.3),
          ),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Row(
            children: [
              Icon(
                Icons.video_call,
                color: Colors.white,
              ),
              Icon(
                Icons.more_horiz,
                color: Colors.white,
              ),
            ],
          ),
        )
      ],
    );
  }
}
