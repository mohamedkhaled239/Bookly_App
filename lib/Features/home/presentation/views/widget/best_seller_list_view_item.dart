import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

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
          const SizedBox(
            width: 20,
          ),
          Column(
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
                                    const SizedBox(height: 5,),

              const Text(
                "J.K.Rowling",
                style: Styles.textStyle14,
              ),
                                                  const SizedBox(height: 5,),

               Row(
                children: [
                  Text(
                    "19.99 € ",
                    style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(width: 50,),
                  const Icon(Icons.star,color: Colors.yellow,),
                  const Text("4.8 (2390)")
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
