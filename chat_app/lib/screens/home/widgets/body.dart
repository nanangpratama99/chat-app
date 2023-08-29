import 'package:chat_app/models/menu_model.dart';
import 'package:chat_app/models/user_profile_model.dart';
import 'package:chat_app/screens/home/widgets/list_profile.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: menuDataTitle.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 35.0),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Column(
                        children: [
                          Text(
                            menuDataTitle[index].menu_title,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 25),
                          ),
                          if (currentIndex == index)
                            Container(
                              height: 5,
                              width: 15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white.withOpacity(0.5),
                              ),
                            )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
        if (currentIndex == 0)
          Positioned(
            top: 75,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(45),
                  topLeft: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Favourite contact",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: userProfileData.length,
                      itemBuilder: (context, index) {
                        if (userProfileData[index].isFavouriteContact) {
                          return BuildFavouriteContact(index);
                        }
                        return Container();
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        Positioned(
          top: currentIndex == 0 ? 270 : 75,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
            child: ListView.builder(
              itemCount: userProfileData.length,
              itemBuilder: (context, index) {
                if (currentIndex == 0 || userProfileData[index].isActive) {
                  return BuildListProfile(userProfileData, index);
                }
                return Container();
              },
            ),
          ),
        ),
      ],
    );
  }

  Padding BuildFavouriteContact(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            CircleAvatar(
              radius: 38,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage(userProfileData[index].image),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              userProfileData[index].name,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
