import 'package:booklyapp/core/utils/data_assets.dart';
import 'package:flutter/material.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.red,
        image: const DecorationImage(
          image: AssetImage(DataAssets.kLogo),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
