// import 'package:booklyapp/core/utils/data_assets.dart';
import 'package:booklyapp/feature/Splash/presentation/widgets/custom_app_bar.dart';
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
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            CustomAppBar(
              icon: Icons.shopping_cart_outlined,
              onPressed: () {
                Navigator.pop(context);
              },
              title: Icon(Icons.close, size: 48),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: AspectRatio(aspectRatio: 2.4 / 3.8, child: ItemListView()),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text('ffdsgsgsfg', style: TextStyle(fontSize: 48)),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),

            Text(
              'dfsgsfgsfg',
              style: TextStyle(fontSize: 28, color: Colors.white54),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            Text(
              'rate: 4.5  views: 1000',
              style: TextStyle(fontSize: 24, color: Colors.white54),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.075,
                  width: MediaQuery.of(context).size.width * 0.35,
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
                  height: MediaQuery.of(context).size.height * 0.075,
                  width: MediaQuery.of(context).size.width * 0.35,
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
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
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
            ListViewDetailsPage(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }
}
