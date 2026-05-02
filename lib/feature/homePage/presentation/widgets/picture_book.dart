import 'package:booklyapp/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class PictureBook extends StatelessWidget {
  const PictureBook({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 3.8,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
            image: AssetImage(AssetsData.kLogo),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
