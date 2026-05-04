// import 'package:booklyapp/constants.dart';
import 'package:booklyapp/feature/search/presentation/widgets/body_search_view.dart';
// import 'package:booklyapp/feature/search/presentation/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BodySearchView());
  }
}
