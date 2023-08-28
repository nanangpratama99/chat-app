import 'package:flutter/material.dart';

import '../../../models/user_profile_model.dart';

class BuildListProfile extends StatelessWidget {
 final List<UserProfileModel> userProfileData;
  final int index;

  const BuildListProfile(this.userProfileData, this.index, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    
    final userProfile = userProfileData[index];
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(userProfile.image),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userProfile.lastSent),
                  const Text("hour ago"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
