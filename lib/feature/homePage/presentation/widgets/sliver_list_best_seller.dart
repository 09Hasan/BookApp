import 'package:booklyapp/feature/homePage/presentation/view/details_page.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/item_best_seller_list_view_books.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:get/get_navigation/src/extension_navigation.dart';

class SliverListBestSeller extends StatelessWidget {
  const SliverListBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
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
      itemCount: 10,
    );
  }
}

  //  body: Padding(
  //       padding: const EdgeInsets.symmetric(horizontal: 24),
  //       child: Column(
  //         children: [
  //           const SizedBox(height: 40),
  //           //must to create anthor Custom appbar
  //           CustomAppBar(
  //             title: Image.asset(DataAssets.kLogo, height: 30),
  //             icon: Icons.search,
  //             onPressed: () {},
  //           ),

  //           const SizedBox(height: 16),

  //           const ListViewNewestBooks(),
  //           const SizedBox(height: 16),
  //           const ListViewBestSeller(),
           
  //         ],
  //       ),
  //     ),
   