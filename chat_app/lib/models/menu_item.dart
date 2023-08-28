import 'package:flutter/material.dart';

class MenuItem {
  String title;
  IconData icon;

  MenuItem({required this.title, required this.icon});
}

List<MenuItem> menuItemData = [
  MenuItem(title: 'Account', icon: Icons.key),
  MenuItem(title: 'Chat', icon: Icons.message),
  MenuItem(title: 'Notification', icon: Icons.notification_add),
  MenuItem(title: 'Media', icon: Icons.file_copy),
  MenuItem(title: 'Help', icon: Icons.help),
];
