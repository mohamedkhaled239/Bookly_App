import 'package:bookly_app/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/featured_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal:  8.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          CustomAppBar(),
          FeaturedBooksListView(),
          Text(
            'Best Saller',
            style: Styles.titleMedium,
          ),
        ],
      ),
    );
  }
}
