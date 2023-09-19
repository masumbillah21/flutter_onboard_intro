import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboard_app/home_screen.dart';

class IntroScreen extends StatefulWidget {
  static const routeName = "/";
  const IntroScreen({super.key});
  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  void _goToHome() {
    Navigator.of(context)
        .pushNamedAndRemoveUntil(HomeScreen.routeName, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        onDone: () {
          _goToHome();
        },
        done: const Text(
          'Continue',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.indigo,
          ),
        ),
        next: const Icon(
          Icons.arrow_forward,
          color: Colors.blueAccent,
        ),
        onSkip: () {
          _goToHome();
        },
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.indigo,
          ),
        ),
        dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20.0, 10.0),
          color: Colors.black54,
          activeColor: Colors.indigo,
          spacing: EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
            titleWidget: const Text(
              "Title Here",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "body text goes here and it can be long text",
            image: Image.asset(
              'assets/image_1.png',
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Title Here",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "body text goes here and it can be long text",
            image: Image.asset(
              'assets/image_2.png',
              height: 400,
              width: 400,
            ),
          ),
          PageViewModel(
            titleWidget: const Text(
              "Title Here",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            body: "body text goes here and it can be long text",
            image: Image.asset(
              'assets/image_3.png',
              height: 400,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }
}
