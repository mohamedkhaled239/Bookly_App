import 'package:bookly_app/core/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
          padding:  EdgeInsets.symmetric(
            horizontal:  30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child:  CustomButton(
                  text: '19.99 € ',
                  backgroundColor: Colors.white,
                  textcolor: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)), 
                ),
              ),
               Expanded(
                child:CustomButton(
                  fontsize: 16,
                   text: 'Free Preview',
            backgroundColor: Colors.redAccent,
            textcolor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
          ),
               ),
            ],
          ),
        );
  }
}
