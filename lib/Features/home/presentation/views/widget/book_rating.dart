import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
   const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Colors.yellow,
        ),
        const SizedBox(width: 6),
        const Text('4.8', style: Styles.textStyle16),
        const SizedBox(width: 3),
        Text(
          '(245)',
          style: Styles.textStyle14.copyWith(color: Colors.white70),
          selectionColor: const Color(0xff707070),
        ),
      ],
    );
  }
}
