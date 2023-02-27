// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';

import '../../../data/repos/home_repo.dart';

part 'newsetbooks_state.dart';

class NewsetbooksCubit extends Cubit<NewsetbooksState> {
  NewsetbooksCubit(
    this.homeRepo,
  ) : super(NewsetbooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewsetbooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(NewsetbooksFailure(failure.errorMessage));
    }, (books) {});
  }
}
