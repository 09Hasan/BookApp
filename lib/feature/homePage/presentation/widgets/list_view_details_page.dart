import 'package:flutter/material.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view.dart';

class ListViewDetailsPage extends StatelessWidget {
  const ListViewDetailsPage({super.key, required this.height});
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(aspectRatio: 2.4 / 3.8, child: ItemListView()),
          );
        },
      ),
    );
  }
}
