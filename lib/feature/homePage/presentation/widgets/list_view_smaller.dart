import 'package:flutter/material.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/picture_book.dart';

class ListViewSmaller extends StatelessWidget {
  const ListViewSmaller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(aspectRatio: 2.4 / 3.8, child: PictureBook()),
          );
        },
      ),
    );
  }
}
