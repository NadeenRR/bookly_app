import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Features/home/presention/maneger/similer_books/similer_books_cubit.dart';
import 'package:bookly_app/Features/home/presention/view/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.book});

  final BookModels book;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilerBooksCubit>(context)
        .fetchSimilerBooks(category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: BookDetailsViewBody(
      book: widget.book,
    )));
  }
}
