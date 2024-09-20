import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colorCreated, this.cardChild, this.onPress});
  final Color colorCreated;
  final Widget? cardChild;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0), color: colorCreated),
        margin: const EdgeInsets.all(15.0),
        padding: const EdgeInsets.all(10),
        child: cardChild,
      ),
    );
  }
}
