import 'package:booklyapp/core/utils/data_assets.dart';
import 'package:booklyapp/core/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_newest_books.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/best_seller_list_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 40),
            //must to create anthor Custom appbar
            CustomAppBar(
              title: Image.asset(DataAssets.kLogo, height: 30),
              icon: Icons.search,
              onPressed: () {},
            ),
            const SizedBox(height: 16),

            const ListViewNewestBooks(),
            const SizedBox(height: 16),
            const BestSellerListView(),
          ],
        ),
      ),
    );
  }
}
