import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Dimens.dart';
import 'package:learnflutter/screens/settings/profile_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(Dimens.twelve),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/instagram.png",height: Dimens.sixty,),
                    SizedBox(width: Dimens.eight,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Profile Name", style: TextStyle(color: Colors.white),),
                        Text("Profile email Id", style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: openProfilePage,
                  child: Text("Edit Profile", style: TextStyle(color: Colors.white),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void openProfilePage() {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return ProfileScreen();
    }));
  }
}
