import 'package:booklyapp/feature/Splash/presentation/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/custom_list_view.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/custom_list_view_items_with_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: MediaQuery.of(context).size.height * 0.02,
          right: MediaQuery.of(context).size.height * 0.02,
        ),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            CustomAppBar(icon: Icons.search, onPressed: () {}),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),

            const CustomListView(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.015),
            const CustomListViewItemsWithDetails(),
          ],
        ),
      ),
    );
  }
}
