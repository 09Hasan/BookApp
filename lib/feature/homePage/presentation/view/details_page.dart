import 'package:booklyapp/core/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/books_action.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_smaller.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CustomAppBar(
              icon: Icons.shopping_cart_outlined,
              onPressed: () {},
              title: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close, size: 48),
              ),
            ),
            const SizedBox(height: 35),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: const AspectRatio(
                aspectRatio: 2.4 / 3.8,
                child: ItemListView(),
              ),
            ),
            const SizedBox(height: 35),
            const Text('ffdsgsgsfg', style: TextStyle(fontSize: 48)),
            const SizedBox(height: 6),

            const Text(
              'dfsgsfgsfg',
              style: TextStyle(fontSize: 28, color: Colors.white54),
            ),
            const SizedBox(height: 6),
            // const Text(
            //   'rate: 4.5  views: 1000',
            //   style: TextStyle(fontSize: 24, color: Colors.white54),
            // ),
            const BookRating(),

            const SizedBox(height: 30),
            const BooksAction(),
            const SizedBox(height: 35),
            Row(
              children: [
                Text(
                  'You can also like',
                  style: TextStyle(
                    fontSize: 28,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const ListViewSmaller(),
          ],
        ),
      ),
    );
  }
}
