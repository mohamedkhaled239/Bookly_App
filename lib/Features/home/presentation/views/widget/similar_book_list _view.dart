import 'package:bookly_app/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height * .16,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (conrext, item) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal:  4.0),
              child: CustomBookImage(),
            );
          }),
    );
  }
}