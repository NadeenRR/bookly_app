import 'package:bookly_app/Features/home/presention/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';


class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: SafeArea(child: BookDetailsViewBody()));
  }
}