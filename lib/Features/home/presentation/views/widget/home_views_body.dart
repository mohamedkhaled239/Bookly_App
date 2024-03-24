import 'package:bookly_app/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          Text(
            'Best Saller',
            style: Styles.textStyle18,
          ),
          BestSallerListViewItem(),
        ],
      ),
    );
  }
}

class BestSallerListViewItem extends StatelessWidget {
  const BestSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          SizedBox(
            width: 20,
          ),
          Column(
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.height * 0.32,
                  child: const Text(
                    "Harry Potter and the Goblet of Fire",
                    style: Styles.textStyle20,
                    maxLines: 2,
                  )),
              const Text(
                "J.K.Rowling",
                style: Styles.textStyle14,
              ),
              const Row(
                children: [
                  Text(
                    "19.99   ",
                    style: Styles.textStyle14,
                  ),
                  Text("4.8 (2390)")
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
