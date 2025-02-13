import 'package:flutter/material.dart';
import 'package:learnflutter/screens/MyHomePageNew.dart';
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
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return MyHomePageNew();
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
