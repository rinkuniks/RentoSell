import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Dimens.dart';

class MyButton extends StatelessWidget {
  final btnText;
  final Function()? onTap;

  MyButton({super.key, required this.btnText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(Dimens.twentyFour),
        margin: const EdgeInsets.all(Dimens.twentyFour),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12)
        ),
        child: Center(
          child: Text(btnText,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
            fontSize: Dimens.sixteen),),
        ),
      ),
    );
  }
}
