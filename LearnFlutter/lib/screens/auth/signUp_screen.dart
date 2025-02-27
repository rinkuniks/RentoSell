import 'package:flutter/material.dart';
import 'package:learnflutter/screens/auth/login_screen.dart';

import '../../Constants/Dimens.dart';
import '../../components/my_button.dart';
import '../../components/my_text_field.dart';
import 'auth_service.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

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
                controller: emailController,
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

              //Retry password TF
              MyTextField(
                controller: confirmPasswordController,
                hint: "Confirm Password",
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
              MyButton(btnText: "Sign-In", onTap: () => signUp(context)),
              const SizedBox(
                height: Dimens.fifty,
              ),

              //not a member register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a member?",
                      style: TextStyle(color: Colors.grey[700])),
                  const SizedBox(
                    width: Dimens.four,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:
                          (context) => LoginScreen()));
                    },
                    child: Text(
                      "Login Now",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void signUp(BuildContext context) {
    final auth = AuthService();
    if(passwordController.text == confirmPasswordController.text) {
      try {
        auth.signUpWithEmailPassword(emailController.text,
            passwordController.text);
      }catch (e){
        showDialog(context: context, builder: (BuildContext context){
          return AlertDialog(
            title: Text(e.toString()),
          );
        });
      }
    }else{
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text("Passwords don't match"),
        );
      });
    }
  }
}
