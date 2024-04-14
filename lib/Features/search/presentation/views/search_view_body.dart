import 'package:bookly_app/Features/search/presentation/views/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
