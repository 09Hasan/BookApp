import 'package:booklyapp/feature/homePage/presentation/widgets/item_best_seller_list_view_books.dart';
import 'package:flutter/material.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Best Seller', style: Theme.of(context).textTheme.headlineLarge),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: const ItemBestSellerListView(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
