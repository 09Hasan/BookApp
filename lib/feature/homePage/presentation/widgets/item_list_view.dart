import 'package:booklyapp/core/utils/data_assets.dart';
import 'package:booklyapp/feature/homePage/presentation/view/details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ItemListView extends StatelessWidget {
  const ItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => const DetailsPage());
      },

      child: AspectRatio(
        aspectRatio: 2.4 / 3.8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              image: AssetImage(DataAssets.kLogo),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
