import 'package:bookly_app/Features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.25),
          child: const CustomBookImage(),
        ),
        const SizedBox(
          height: 43,
        ),
        Text('The Jungle book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w700)),
        const SizedBox(
          height: 5,
        ),
        Text('Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.5))),

                BookRating(mainAxisAlignment: MainAxisAlignment.center,),
      ],
    );
  }
}

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.close),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
    );
  }
}
