import 'package:flutter/material.dart';
import '../Constants/Constants.dart';
import '../Constants/Dimens.dart';

class PostProperty extends StatefulWidget {
  const PostProperty({super.key});

  @override
  State<PostProperty> createState() => _PostPropertyState();
}

class _PostPropertyState extends State<PostProperty> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          actions: [
            MaterialButton(
              onPressed: () {
                //Condition to check isLoggedin or not
              },
              child: Row(
                children: [
                  Text("Post via WhatsApp"),
                  SizedBox(width: Dimens.eight),
                  Image.asset(Constants.whatsAppImage,
                      width: Dimens.twentyFour,
                      height: Dimens.twentyFour),
                ],
              ),
            ),
          ]),
      body: Column(
        children: [
          Text("Add Basic Details"),
          Text("You are looking to?"),
          ListView.builder(itemBuilder: (context, index){

          })
        ],
      ),
    );
  }
}
