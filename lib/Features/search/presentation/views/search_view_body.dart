import 'package:bookly_app/Features/home/presentation/views/widget/book_seller_list_view_item.dart';
import 'package:bookly_app/Features/search/presentation/views/custom_search_text_field.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SearchviewBody extends StatelessWidget {
  const SearchviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
