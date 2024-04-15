import 'package:bookly_app/Features/home/presentation/views/widget/book_details_view_body.dart';
import 'package:flutter/material.dart';

class BookdetailsView extends StatelessWidget {
  const BookdetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookdetailsViewBody()),
    );
  }
}
