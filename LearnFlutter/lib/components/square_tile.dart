import 'package:flutter/material.dart';
import 'package:learnflutter/Constants/Dimens.dart';

class SquareTile extends StatelessWidget {

  final String imagePath;

  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.twelve),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(Dimens.eight),
        color: Colors.grey[200],
      ),
      child: Image.asset(imagePath, height: Dimens.forty,),
    );
  }
}
