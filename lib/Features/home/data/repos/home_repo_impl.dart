import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/failures.dart';

class HomeRepoImelement implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModels>>> fetchBsetSellerBooks() {
    // TODO: implement fetchBsetSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
