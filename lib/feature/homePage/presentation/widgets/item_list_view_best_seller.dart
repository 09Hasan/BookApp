import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view.dart';
import 'package:flutter/material.dart';

class ItemListViewBestSeller extends StatelessWidget {
  const ItemListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
            child: AspectRatio(aspectRatio: 2.5 / 4, child: ItemListView()),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.18,
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.top,
                      title: Text(
                        'titlehfj,hcjcxjgxxxxxxxxxxxxxxxxxxxxxx',
                        style: TextStyle(fontSize: 32),
                      ),
                      subtitle: Text(
                        'subtitle',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
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
                      Text('Rating: 4.5  ||  Views: 1000'),
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
