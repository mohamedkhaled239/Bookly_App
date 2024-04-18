import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/featured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/manager/featured_book_cubit/featured_books_state.dart';
import 'package:bookly_app/Features/home/presentation/views/widget/custom_book_item.dart';
import 'package:bookly_app/core/utils/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/widgets/custom_loading_indicator.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbooksCubit, FeaturedbooksState>(
        builder: (context, state) {
      if (state is FeaturedbooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .25,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (conrext, item) {
                return const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: CustomBookImage(),
                );
              }),
        );
      } else if (state is FeaturedbooksFailure) {
        return CustomErrorWidget(errMessage: state.errMassage);
      }else{
        return const CuatomLoadingIndicator();
      }
    });
  }
}
