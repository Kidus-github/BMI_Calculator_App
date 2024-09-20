import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.buttonTitle});
  final Function()? onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(10.0)),
      margin: EdgeInsets.all(15.0),
      height: kBottomContainerHeight,
      width: double.infinity,
      child: TextButton(
        onPressed: onTap,
        child: Container(
          child: Text(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              buttonTitle),
        ),
      ),
    );
  }
}
