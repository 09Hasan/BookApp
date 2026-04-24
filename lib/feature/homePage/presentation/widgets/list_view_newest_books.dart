import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view.dart';
import 'package:flutter/material.dart';

class ListViewNewestBooks extends StatelessWidget {
  const ListViewNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,

        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 2.4 / 3.8,
              child: Stack(
                children: [
                  ItemListView(),
                  Positioned(
                    right: 10,
                    bottom: 5,
                    child: IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.white.withAlpha(70),
                        child: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
