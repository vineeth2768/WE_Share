import 'package:flutter/material.dart';
import 'package:weshare/constants/constants.dart';
import 'package:weshare/views/screens/auth/login_screen.dart';

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
      title: 'We Share',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: LoginScreen(),
    );
  }
}
