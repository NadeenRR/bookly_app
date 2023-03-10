import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dio/dio.dart';

class HomeRepoImelement implements HomeRepo {
  final ApiServes apiServes;

  HomeRepoImelement(this.apiServes);
  @override
  Future<Either<Failure, List<BookModels>>> fetchNewsBooks() async {
    try {
      var data = await apiServes.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=Programming ');
      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks() async {
    try {
      var data = await apiServes.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
  
  @override
  Future<Either<Failure, List<BookModels>>> fetchSimilerBooks({required String category}) async{
     try {
      var data = await apiServes.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=computer science');
      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      if (e is DioError) {
        return Left(ServerFailure.fromDioError(e));
      }

      return left(ServerFailure(e.toString()));
    }
  }
}
