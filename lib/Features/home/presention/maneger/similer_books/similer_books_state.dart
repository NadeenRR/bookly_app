part of 'similer_books_cubit.dart';

abstract class SimilerBooksState extends Equatable {
  const SimilerBooksState();

  @override
  List<Object> get props => [];
}

class SimilerBooksInitial extends SimilerBooksState {}

class SimilerBooksLoading extends SimilerBooksState {}

class SimilerBooksSuccess extends SimilerBooksState {
  final List<BookModels> books;

  const SimilerBooksSuccess(this.books);
}

class SimilerBooksFailure extends SimilerBooksState {
  final String errorMessage;

  const SimilerBooksFailure(this.errorMessage);
}
