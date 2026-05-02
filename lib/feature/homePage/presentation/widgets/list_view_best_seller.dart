// import 'package:booklyapp/feature/homePage/presentation/view/details_page.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/item_best_seller_list_view_books.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';
// import 'package:get/instance_manager.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Get.to(DetailsPage());
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: const ItemBestSellerListView(),
          ),
        );
      },
    );
  }
}
