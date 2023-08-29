import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: ThemeData(
        drawerTheme: const DrawerThemeData(
            scrimColor: Colors.transparent, elevation: 0.5),
        scaffoldBackgroundColor: const Color(0xff272829),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              size: 35,
              color: Colors.white60,
            ),
            backgroundColor: Colors.transparent,
            elevation: 0),
      ),
      home: const HomeScreen(),
    );
  }
}
