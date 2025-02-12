import 'package:flutter/material.dart';
import 'package:learnflutter/screens/intro_screens/page_three.dart';
import 'package:learnflutter/screens/intro_screens/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'intro_screens/page_one.dart';

class Onboardingscreen extends StatefulWidget {
  const Onboardingscreen({super.key});

  @override
  State<Onboardingscreen> createState() => _OnboardingscreenState();
}

class _OnboardingscreenState extends State<Onboardingscreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              IntroPageOne(),
              IntroPageTwo(),
              IntroPageThree()
            ],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: SmoothPageIndicator(controller: _controller, count: 3))
        ],
      ),
    );
  }
}
