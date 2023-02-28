// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import '../../../data/models/book_models/book_models.dart';
import '../../../data/repos/home_repo.dart';

part 'similer_books_state.dart';

class SimilerBooksCubit extends Cubit<SimilerBooksState> {
  SimilerBooksCubit(
    this.homeRepo,
  ) : super(SimilerBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilerBooks({required String category}) async {
    emit(SimilerBooksLoading());
    var result = await homeRepo.fetchSimilerBooks(category: category);
    result.fold((failure) {
      emit(SimilerBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SimilerBooksSuccess(books));
    });
  }
}
