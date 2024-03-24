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
      padding:  EdgeInsets.symmetric(horizontal:  14.0),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          CustomAppBar(),
          FeaturedBooksListView(),
          Text(
            'Best Saller',
            style: Styles.titleMedium,
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
    return  SizedBox(
      height: 120,
      child: Row(
        children: [
AspectRatio(
      aspectRatio: 2.5 / 4,
      child: Container(
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              fit: BoxFit.fill, image: AssetImage(AssetData.testimage)),
        ),
      ),
    ),      
          Column(
            children: [
              Text("Harry Potter and the \n Goblet of Fire",style: Styles.titleSmall,),
              Text("J.K.Rowling",style: Styles.titleSmall,),
              Row(
                children: [
                              Text("19.99   ",style: Styles.titleSmall,),
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
