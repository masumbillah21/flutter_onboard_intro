import 'package:flutter/material.dart';
import 'package:onboard_app/home_screen.dart';
import 'package:onboard_app/intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Onboard',
      routes: {
        IntroScreen.routeName: (context) => const IntroScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
      },
    );
  }
}
