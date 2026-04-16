import 'package:booklyapp/core/utils/data_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    // required this.title,
    required this.icon,
    this.onPressed,
  });

  // final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(DataAssets.kLogo, height: 42),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(20),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(onPressed: onPressed, icon: Icon(icon, size: 48)),
        ),
      ],
    );
  }
}
