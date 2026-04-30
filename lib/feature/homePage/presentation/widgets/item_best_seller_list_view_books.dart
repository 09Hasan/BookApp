import 'package:booklyapp/constants.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/book_rating.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view.dart';
import 'package:flutter/material.dart';

class ItemBestSellerListView extends StatelessWidget {
  const ItemBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: Row(
        children: const [
          ItemListView(),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.top,
                    title: Text(
                      'titlehfj,',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 32,
                        fontFamily: kGTSectraFontFamily,
                      ),
                    ),
                    subtitle: Text(
                      'subtitle',
                      // style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 24,
                    bottom: 16,
                  ),
                  child: Row(
                    children: [
                      Text('Price: \$19.99'),
                      Spacer(flex: 1),
                      BookRating(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
