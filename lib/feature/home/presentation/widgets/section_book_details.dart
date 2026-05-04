import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/widgets/custom_app_bar.dart';
import 'package:booklyapp/feature/home/presentation/widgets/book_rating.dart';
import 'package:booklyapp/feature/home/presentation/widgets/picture_book.dart';
import 'package:flutter/material.dart';

class SectionBookDetails extends StatelessWidget {
  const SectionBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: kPaddingVertical),
        //app bar
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
        //picture the book
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: PictureBook(),
        ),
        const SizedBox(height: 45),
        Text(
          'Harry Potter and the Goblet of Fire',
          textAlign: TextAlign.center,
          style: Styles.textStyle30,
        ),
        const SizedBox(height: 6),

        Text(
          'J.K. Rowling',
          style: Styles.textStyle20.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 16),
        // const Text(
        //   'rate: 4.5  views: 1000',
        //   style: TextStyle(fontSize: 24, color: Colors.white54),
        // ),
        const BookRating(),
      ],
    );
  }
}
