import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageThree extends StatelessWidget {
  const IntroPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      body: Center(
        child: Lottie.network("https://lottie.host/497fc04d-ca1d-49c4-acd7-e65ac6c0d9d0/H0QeyuiN8Q.json"),
      ),
    );
  }
}
