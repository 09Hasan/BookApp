// import 'package:booklyapp/core/utils/data_assets.dart';

import 'package:flutter/material.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.borderRadius,
    required this.backgroundColor,
    required this.title,
    this.onPressed,
    this.textStyle,
  });
  final BorderRadius borderRadius;
  final TextStyle? textStyle;
  final Color backgroundColor;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: TextButton(
        onPressed: onPressed,

        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
          backgroundColor: backgroundColor,
        ),

        child: Text(textAlign: TextAlign.center, title, style: textStyle),
      ),
    );
  }
}
