import 'package:flutter/material.dart';
import '../Constants/Constants.dart';
import '../Constants/Dimens.dart';

class PostProperty extends StatelessWidget {
  const PostProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Property"),
          // actions: [
          //   MaterialButton(
          //     onPressed: () {
          //       //Condition to check isLoggedin or not
          //     },
          //     child: Row(
          //       children: [
          //         Text("Post via WA"),
          //         SizedBox(width: Dimens.eight),
          //         Image.asset(Constants.whatsAppImage,
          //             width: Dimens.twentyFour,
          //             height: Dimens.twentyFour),
          //       ],
          //     ),
          //   ),
          // ]
      ),
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
