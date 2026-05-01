import 'package:booklyapp/constants.dart';
import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/book_rating.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/item_list_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemBestSellerListView extends StatelessWidget {
  const ItemBestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 175,
      child: Row(
        children: [
          ItemListView(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: [
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle25.copyWith(
                      fontFamily: kGTSectraFontFamily,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    'J.K. Rowling',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18.copyWith(color: Colors.white70),
                  ),
                  const SizedBox(height: 3),

                  Row(
                    children: [
                      Text(
                        '19.99 €',
                        style: Styles.textStyle25.copyWith(
                          fontWeight: FontWeight.w900,
                          fontFamily: GoogleFonts.montserrat.toString(),
                        ),
                      ),
                      const Spacer(flex: 1),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
