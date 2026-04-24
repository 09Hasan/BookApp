// import 'package:booklyapp/core/utils/data_assets.dart';
import 'package:booklyapp/core/widgets/custom_app_bar.dart';
// import 'package:booklyapp/feature/homePage/presentation/widgets/custom_list_view.dart';
// import 'package:booklyapp/feature/homePage/presentation/widgets/custom_list_view_items_with_details.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_details_page.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view.dart';
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
            Text('ffdsgsgsfg', style: TextStyle(fontSize: 48)),
            const SizedBox(height: 6),

            Text(
              'dfsgsfgsfg',
              style: TextStyle(fontSize: 28, color: Colors.white54),
            ),
            const SizedBox(height: 6),
            Text(
              'rate: 4.5  views: 1000',
              style: TextStyle(fontSize: 24, color: Colors.white54),
            ),
            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * .35,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '19.99\$',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * .35,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Buy',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ),
                ),
              ],
            ),
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
            const ListViewDetailsPage(),
          ],
        ),
      ),
    );
  }
}
