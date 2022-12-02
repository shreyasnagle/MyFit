import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:fitness_app/screens/signup.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

// A list of three screens shown as a brief introduction

var pages = [
  PageViewModel(
      title: "Stay fit with our tips!",
      body: "Get in shape and follow the tutorials",
      image: Center(
        child: Image.asset("assets/logo.png", height: 250.0),
      ),
      decoration: const PageDecoration(
          pageColor: Color(0xff2A19F6),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18.0))),
  PageViewModel(
      title: "Exercise Now!",
      body: "Do these excercises daily to achieve your goals",
      image: Center(
        child: Image.asset("assets/MyFit-removebg-preview.png", height: 200.0),
      ),
      decoration: const PageDecoration(
          pageColor: Color(0xff2A19F6),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18.0))),
  PageViewModel(
      title: "Let's start",
      body: "What are you waiting for? Start exercise today",
      image: Center(
        child: Image.asset("assets/Bodybuilder-removebg-preview.png",
            height: 200.0),
      ),
      decoration: const PageDecoration(
          pageColor: Color(0xff2A19F6),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24.0),
          bodyTextStyle: TextStyle(color: Colors.white, fontSize: 18.0)))
];

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: const Color(0xff192a56),
        pages: pages,
        onDone: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => SignUpDemo()));
        },
        next: const Icon(
          Icons.arrow_right,
          color: Colors.white,
        ),
        done: const Text("Continue",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            )),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: Colors.amber,
            color: Colors.white,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    );
  }
}
