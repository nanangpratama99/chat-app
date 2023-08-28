import 'package:chat_app/models/menu_item.dart';
import 'package:chat_app/screens/home/widgets/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      drawer: BuildDrawer(context),
    );
  }

  Drawer BuildDrawer(BuildContext context) {
    return Drawer(
      
      width: 300,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
      backgroundColor: const Color(0xff272829),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 30),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(35)),
                    child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 20,
                        )),
                  ),
                  const SizedBox(width: 50),
                  const Text(
                    "Setting",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/images/3.jpeg'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Banana",
                        style: TextStyle(
                          color: Colors.white60,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "@banana",
                        style: TextStyle(color: Colors.white60),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  itemCount: menuItemData.length,
                  itemBuilder: (context, index) {
                    return BuildMenu(
                      menuItemData[index].title,
                      menuItemData[index].icon,
                    );
                  },
                ),
              ),
              const Divider(color: Colors.white60, thickness: 2),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(
                    Icons.group_add_outlined,
                    color: Colors.white60,
                    size: 35,
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Invite a Friend",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  )
                ],
              ),
              const Spacer(),
              const Row(
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.white60,
                    size: 35,
                  ),
                  SizedBox(width: 50),
                  Text(
                    "Log Out",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding BuildMenu(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.white60,
              size: 35,
            ),
            const SizedBox(width: 50),
            Text(
              title,
              style: const TextStyle(color: Colors.white60, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.search_rounded,
            size: 40,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
