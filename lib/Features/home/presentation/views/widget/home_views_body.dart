import 'package:bookly_app/Features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustonListViewItem(),
      ],
    );
  }
}

class CustonListViewItem extends StatelessWidget {
  const CustonListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: Container(
          height: 50,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(AssetData.testimage)),
          ),
        ),
      ),
    );
  }
}
