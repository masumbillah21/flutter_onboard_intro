import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text(
          "Welcome home",
          style: TextStyle(
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}
