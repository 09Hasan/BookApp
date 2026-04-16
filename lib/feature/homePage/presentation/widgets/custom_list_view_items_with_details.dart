import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view_with_details.dart';
import 'package:flutter/material.dart';

class CustomListViewItemsWithDetails extends StatelessWidget {
  const CustomListViewItemsWithDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Best Seller',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          // SizedBox(height: MediaQuery.of(context).size.height * 0.0001),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ItemListViewWithDetails();
              },
            ),
          ),
        ],
      ),
    );
  }
}
