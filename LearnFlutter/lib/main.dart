import 'package:flutter/material.dart';
import 'package:learnflutter/screens/MyHomePage.dart';
import 'package:learnflutter/screens/MyHomePageNew.dart';
import 'package:learnflutter/screens/OnBoardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: MyHomePage(),
      // home: MyHomePageNew(),
      home: Onboardingscreen(),
    );
  }
}

