import 'package:flutter/material.dart';
import 'package:learnflutter/components/my_text_field.dart';

import '../../Constants/Dimens.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  String _selectedGender = 'Male'; // Default gender

  void _handleGenderChange(String? value) {
    setState(() {
      _selectedGender = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepPurple[200],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: Dimens.twentyFour, top: Dimens.fifty),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: Dimens.fifty,
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: Dimens.eighty,
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(Dimens.twentyFour),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyTextField(
                              controller: _firstnameController,
                              hint: "Enter First Name",
                              obscureText: false),
                          const SizedBox(
                            height: Dimens.eight,
                          ),
                          MyTextField(
                              controller: _lastnameController,
                              hint: "Enter Last Name",
                              obscureText: false),
                          const SizedBox(
                            height: Dimens.eight,
                          ),
                          MyTextField(
                              controller: _usernameController,
                              hint: "Enter User Name",
                              obscureText: false),
                          const SizedBox(
                            height: Dimens.eight,
                          ),
                          MyTextField(
                              controller: _emailController,
                              hint: "Enter Email id",
                              obscureText: false),
                          const SizedBox(
                            height: Dimens.eight,
                          ),
                          MyTextField(
                              controller: _phoneController,
                              hint: "Enter Phone Number",
                              obscureText: false),
                          const SizedBox(
                            height: Dimens.eight,
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: Dimens.eight,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: Dimens.twentyEight),
                            child: Text(
                              "Gender",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: Dimens.sixteen),
                            ),
                          ),
                          const SizedBox(
                            height: Dimens.eight,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: Dimens.eight),
                            child: Row(
                              children: <Widget>[
                                Radio<String>(
                                  value: 'Male',
                                  groupValue: _selectedGender,
                                  onChanged: _handleGenderChange,
                                ),
                                Text('Male'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: Dimens.eight),
                            child: Row(
                              children: <Widget>[
                                Radio<String>(
                                  value: 'Female',
                                  groupValue: _selectedGender,
                                  onChanged: _handleGenderChange,
                                ),
                                Text('Female'),
                              ],
                            ),
                          ),
                          Divider(thickness: 1,),
                        ],
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        "assets/instagram.png",
                        height: 100,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
