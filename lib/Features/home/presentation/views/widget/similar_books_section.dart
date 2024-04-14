import 'package:bookly_app/Features/home/presentation/views/widget/similar_book_list%20_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text('You Can also Like',
              style: Styles.textStyle14.copyWith(
                fontWeight: FontWeight.w700,
              )),
        ),
        const SizedBox(
          height: 12,
        ),
        //const BookDetailsViewBodyText(),
        const SimilarBookListView(),
      ],
    );
  }
}
