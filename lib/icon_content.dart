import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  const IconContent({required this.iconText, required this.iconType});
  final String iconText;
  final IconData iconType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(size: kSizeOfIcon, iconType),
        SizedBox(
          height: kSizedBoxHeight,
        ),
        Text(
          iconText,
          style: kLableStyle,
        )
      ],
    );
  }
}
