import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/CommonComponents.dart';
import 'package:learnflutter/Constants/Constants.dart';
import 'package:learnflutter/screens/intro_screens/page_three.dart';
import 'package:learnflutter/screens/intro_screens/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'auth/auth_gate.dart';
import 'intro_screens/page_one.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: [IntroPageOne(), IntroPageTwo(), IntroPageThree()],
          ),
          Container(
              alignment: Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Skip
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text("Skip")),

                  //Indicator
                  SmoothPageIndicator(controller: _controller, count: 3),

                  //Next or Done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            CommonComponents.savePrefValues(
                                Constants.ONBOARDING, true);
                            if (kDebugMode) {
                              print("-------Clicked Done-------");
                            }
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                                  return AuthGate();
                                }));
                          },
                          child: Text("Done"))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: Text("Next")),
                ],
              ))
        ],
      ),
    );
  }
}
