import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/core/utils/app%20router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsVeiw);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.9 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      fit: BoxFit.fill, image: AssetImage(AssetData.testimage)),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.height * 0.32,
                      child: const Text(
                        "Harry Potter and the Goblet of Fire",
                        style: Styles.textStyle20,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "J.K.Rowling",
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "19.99 € ",
                        style: Styles.textStyle20
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      const BookRating(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
