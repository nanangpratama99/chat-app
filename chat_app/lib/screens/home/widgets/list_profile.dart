import 'package:chat_app/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

import '../../../models/user_profile_model.dart';

class BuildListProfile extends StatelessWidget {
  final List<UserProfileModel> userProfileData;
  final int index;

  const BuildListProfile(this.userProfileData, this.index, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userProfile = userProfileData[index];
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessageScreen(
              index: index,
              userProfileData: const [],
            ),
          ),
        ),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(userProfile.image),
                ),
                if (userProfileData[index].isActive == true)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 3),
                          color: Colors.green,
                          shape: BoxShape.circle),
                    ),
                  )
              ],
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userProfile.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 5),
                Opacity(
                  opacity: 0.5,
                  child: Text(userProfile.message, maxLines: 1),
                ),
              ],
            ),
            const Spacer(),
            Opacity(
              opacity: 0.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userProfile.lastSent),
                  Text("${userProfile.lastSent}h ago"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
