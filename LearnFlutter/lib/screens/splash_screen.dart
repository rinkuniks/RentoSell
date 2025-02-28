import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Constants.dart';
import 'package:learnflutter/screens/OnBoardingScreen.dart';
import 'package:learnflutter/screens/auth/auth_gate.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isOnbardingDone = false;

  @override
  void initState() {
    _loadPrefData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Lottie.network(
            "https://lottie.host/d691d652-fc8c-4e45-a6a6-266bfeebee25/0M4ZJSNo4n.json"),
      ),
    );
  }

  void _loadPrefData() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    _isOnbardingDone = preferences.getBool(Constants.ONBOARDING) ?? false;
    if (kDebugMode) {
      print("-------$_isOnbardingDone-------");
    }
    if(!_isOnbardingDone) {
      Timer(Duration(seconds: 3), () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => OnBoardingScreen()));
      });
    }else{
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => AuthGate()));
    }
  }
}
