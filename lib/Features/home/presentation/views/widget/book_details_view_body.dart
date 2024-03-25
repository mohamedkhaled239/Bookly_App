import 'package:flutter/material.dart';

class BookdetailsViewBody extends StatelessWidget {
  const BookdetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
CustomBookDetailsAppBar(),
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