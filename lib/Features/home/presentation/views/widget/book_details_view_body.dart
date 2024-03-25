import 'package:bookly_app/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Column(
      
      children: [
const CustomBookDetailsAppBar(),
Padding(
  padding: EdgeInsets.symmetric(horizontal:  width*0.25),
  child: CustomBookImage(),
),
      ],
    );
  }
}

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(
       horizontal:  20.0),
      child: Row(
        children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.close),),
                  const Spacer(),
      
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined),)
        ],
      ),
    );
  }
}