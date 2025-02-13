import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Lottie.network(
            "https://lottie.host/91299220-268e-4263-bb60-c4e96b7b619f/7alAGWIlgj.json"),
      ),
    );
  }
}
