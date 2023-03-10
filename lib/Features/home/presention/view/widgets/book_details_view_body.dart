import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_name_details.dart';
import 'custom_book_details_app_bar.dart';
import 'custom_book_image.dart';
import 'similar_book_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});

  final BookModels book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CustomBookDetailsAppBar(),
        SizedBox(
          height: MediaQuery.of(context).size.height / 60,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 4),
          child: CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? ' '),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 40,
        ),
        BookNameDetails(
          book: book,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 30,
        ),
        const Text(
          'You can also like',
          style: Styles.tetxStyle18,
          textAlign: TextAlign.left,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 50,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height / 5.5,
            child: const SimilarBookListView())
      ]),
    );
  }
}
