import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Dimens.dart';
import 'package:learnflutter/components/my_button.dart';
import 'package:learnflutter/components/my_text_field.dart';

import '../../components/square_tile.dart';

class Signupscreen extends StatelessWidget {
  Signupscreen({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: Dimens.fifty,
              ),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: Dimens.fifty,
              ),

              //welcome tag
              Text(
                "Welcome back you\'ve been missed !",
                style: TextStyle(
                    color: Colors.grey[700], fontSize: Dimens.sixteen),
              ),
              const SizedBox(
                height: Dimens.twentyFour,
              ),

              //username TF
              MyTextField(
                controller: usernameController,
                hint: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: Dimens.twelve,
              ),

              //password TF
              MyTextField(
                controller: passwordController,
                hint: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: Dimens.twelve,
              ),

              //forgot password
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Dimens.twentyFour),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              //sign in btn
              MyButton(btnText: "Sign-In", onTap: signUserIn),
              const SizedBox(
                height: Dimens.fifty,
              ),

              //or continue with
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: Dimens.twentyFour),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[700],
                    )),
                    Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: Dimens.eight),
                      child: Text(
                        "or Continuew With",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[700],
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: Dimens.twentyFour,
              ),

              //google or apple
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(imagePath: "assets/google.png"),
                  SizedBox(
                    width: Dimens.twenty,
                  ),
                  SquareTile(imagePath: "assets/apple.png"),
                ],
              ),
              const SizedBox(
                height: Dimens.twentyFour,
              ),

              //not a member register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member?",
                      style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(
                    width: Dimens.four,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  //login function for user sign in
  void signUserIn() {}
}
