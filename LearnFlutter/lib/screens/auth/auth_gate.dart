import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learnflutter/screens/MyHomePageNew.dart';
import 'package:learnflutter/screens/OnBoardingScreen.dart';
import 'package:learnflutter/screens/auth/SignUpScreen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot){
            //if user logged in
            if(snapshot.hasData){
              return const MyHomePageNew();
            }else {
              return Signupscreen();
            }
          }),
    );
  }
}
