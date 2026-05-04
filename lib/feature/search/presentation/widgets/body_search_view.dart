import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/home/presentation/widgets/item_best_seller_list_view_books.dart';
import 'package:booklyapp/feature/search/presentation/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class BodySearchView extends StatelessWidget {
  const BodySearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kPaddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: kPaddingVertical),

          const CustomSearchTextField(),
          const SizedBox(height: 20),
          Text(
            textAlign: TextAlign.start,
            'Best Seller',
            style: Styles.textStyle25,
          ),
          const SizedBox(height: 10),

          const Expanded(child: ListViewSearchResults()),
        ],
      ),
    );
  }
}

class ListViewSearchResults extends StatelessWidget {
  const ListViewSearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      // shrinkWrap: true,
      // physics: const NeverScrollableScrollPhysics(),
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
