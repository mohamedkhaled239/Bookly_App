import 'package:bookly_app/Features/home/presentation/views/widget/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSallerListView extends StatelessWidget {
  const BestSallerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical:  20.0),
          child:  BestSallerListViewItem(),
        );
      },
    );
  }
}