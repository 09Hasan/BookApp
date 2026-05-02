import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/assets_data.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_newest_books.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/sliver_list_best_seller.dart';
import 'package:flutter/material.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        
        slivers: [
          SliverToBoxAdapter(
            
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: kPaddingVertical),
                //appbar
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPaddingHorizontal,
                  ),
                  child: CustomAppBar(
                    title: Image.asset(
                      AssetsData.kLogo,
                      height: kPaddingHorizontal,
                    ),
                    icon: Icons.search,
                    onPressed: () {},
                  ),
                ),
                //List View Newest Books
                Padding(
                  padding: const EdgeInsets.only(left: kPaddingHorizontal),
                  child: const ListViewNewestBooks(),
                ),
                const SizedBox(height: 50),
                //Text
                Padding(
                  padding: const EdgeInsets.only(left: kPaddingHorizontal),
                  child: Text(
                    textAlign: TextAlign.start,
                    'Best Seller',
                    style: Styles.textStyle25,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),

          const SliverPadding(
            padding: EdgeInsetsGeometry.symmetric(
              horizontal: kPaddingHorizontal,
            ),
            sliver: SliverListBestSeller(),
          ),
        ],
      ),
    );
  }
}
