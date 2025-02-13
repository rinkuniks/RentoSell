import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPageTwo extends StatelessWidget {
  const IntroPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      body: Center(
        child: Lottie.network("https://lottie.host/4052e22f-f019-4fe9-8a2c-ba284468dc5f/iVp1bcYs1r.json"),
      ),
    );
  }
}
