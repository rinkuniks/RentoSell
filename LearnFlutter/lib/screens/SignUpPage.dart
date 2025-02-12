import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../Constants/Dimens.dart';

class SignUppage extends StatefulWidget {
  const SignUppage({super.key});

  @override
  State<SignUppage> createState() => _SignUppageState();
}

class _SignUppageState extends State<SignUppage> {
  final TextEditingController _mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container(
        margin: const EdgeInsets.all(Dimens.forty),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mobile_friendly),
                hintText: 'Enter Mobile Number',
                labelText: 'Mobile Number *',
              ),
              controller: _mobileController,
              keyboardType: TextInputType.number,
              maxLength: 10,
            ),
            SizedBox(
              height: Dimens.twelve,
            ),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                // showDialog(
                //     context: context,
                //     builder: (context){
                //       return AlertDialog(
                //         title: Text("Verification Code"),
                //         content: Text('Code entered is $verificationCode'),
                //       );
                //     }
                // );
              }, // end onSubmit
            ),
            SizedBox(
              height: Dimens.twelve,
            ),
            OutlinedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text('Login Successful !'),
                      backgroundColor: Colors.deepPurple,
                      action: SnackBarAction(
                        label: '',
                        onPressed: () {
                          // Code to execute.
                        },
                      ),
                    ),
                  );
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
