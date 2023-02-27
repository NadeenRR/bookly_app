// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'newsetbooks_cubit.dart';

abstract class NewsetbooksState extends Equatable {
  const NewsetbooksState();

  @override
  List<Object> get props => [];
}

class NewsetbooksInitial extends NewsetbooksState {}

class NewsetbooksLoading extends NewsetbooksState {}

class NewsetbooksSuccess extends NewsetbooksState {
  final List<BookModels> books;
  const NewsetbooksSuccess(
    this.books,
  );
}

class NewsetbooksFailure extends NewsetbooksState {
  final String errorMessage;
  const NewsetbooksFailure(
    this.errorMessage,
  );
}
