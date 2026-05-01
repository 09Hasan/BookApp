import 'package:booklyapp/core/utils/data_assets.dart';
import 'package:booklyapp/core/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/body_home_page.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_newest_books.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_best_seller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyHomePage();
  }
}
