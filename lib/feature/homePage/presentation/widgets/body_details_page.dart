import 'package:booklyapp/constants.dart';
// import 'package:booklyapp/core/utils/styles.dart';
// import 'package:booklyapp/core/widgets/custom_app_bar.dart';
// import 'package:booklyapp/feature/homePage/presentation/widgets/book_rating.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/books_action.dart';
// import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_smaller.dart';
// import 'package:booklyapp/feature/homePage/presentation/widgets/picture_book.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/section_book_details.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/section_similar_book.dart';
import 'package:flutter/material.dart';

class BodyDetailsPage extends StatelessWidget {
  const BodyDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: kPaddingHorizontal,
              ),
              child: Column(
                children: [
                  const SectionBookDetails(),
                  const SizedBox(height: 35),
                  const BooksAction(),
                  const Expanded(child: SizedBox(height: 50)),
                  const SectionSimilarBook(),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
