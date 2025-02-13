import 'package:flutter/material.dart';

class IntroPageOne extends StatelessWidget {
  const IntroPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Center(
        child: Text("Page One"),
      ),
    );
  }
}
