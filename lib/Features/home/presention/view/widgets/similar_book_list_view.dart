import 'package:bookly_app/Features/home/presention/maneger/similer_books/similer_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custome_error.dart';
import '../../../../../core/widgets/custome_loading_indicatore.dart';
import 'custom_book_image.dart';

class SimilarBookListView extends StatelessWidget {
  const SimilarBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height / 3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: CustomBookImage(
                      imageUrl: 'https://unsplash.com/photos/ixgVMZ1uUaI',
                    ),
                  );
                }),
          );
        } else if (state is SimilerBooksFailure) {
          return CustomeError(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
