import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/feature/homePage/presentation/widgets/list_view_smaller.dart';
import 'package:flutter/material.dart';

class SectionSimilarBook extends StatelessWidget {
  const SectionSimilarBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
        ),
        const SizedBox(height: 16),
        const ListViewSmaller(),
      ],
    );
  }
}
