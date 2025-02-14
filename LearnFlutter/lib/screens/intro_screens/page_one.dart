import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/*
* Animation Controller is used where we want to animate something
* on Tap it will work
* rest in Intro page Two and Three Normal animation can be seen
* */

class IntroPageOne extends StatefulWidget {
  const IntroPageOne({super.key});

  @override
  State<IntroPageOne> createState() => _IntroPageOneState();
}

class _IntroPageOneState extends State<IntroPageOne>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  bool bookMarked = false;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (bookMarked == false) {
              bookMarked = true;
              _animationController.forward();
            } else {
              bookMarked = false;
              _animationController.reverse();
            }
          },
          child: Lottie.network(
            "https://lottie.host/91299220-268e-4263-bb60-c4e96b7b619f"
            "/7alAGWIlgj.json",
            controller: _animationController,
          ),
        ),
      ),
    );
  }
}
