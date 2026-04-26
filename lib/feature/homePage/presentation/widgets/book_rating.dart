// import 'package:booklyapp/core/utils/data_assets.dart';

import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Colors.amber),
        const SizedBox(width: 4),
        Text('4.8'),
        const SizedBox(width: 6),

        Text('(2586)'),
      ],
    );
  }
}
