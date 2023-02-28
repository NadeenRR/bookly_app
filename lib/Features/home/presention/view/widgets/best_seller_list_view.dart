// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/Features/home/presention/maneger/newset_books/newsetbooks_cubit.dart';
import 'package:bookly_app/core/widgets/custome_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custome_loading_indicatore.dart';
import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({
    Key? key,
  }) : super(key: key) ;

  @override
   Widget build(BuildContext context) {
    return BlocBuilder<NewsetbooksCubit, NewsetbooksState>(
      builder: (context, state) {
        if (state is NewsetbooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: BestSellerListViewItem(
                  book: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewsetbooksFailure) {
          return CustomeError(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
