import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:bookly_app/core/errors/failures.dart';

class HomeRepoImelement implements HomeRepo {
  final ApiServes apiServes;

  HomeRepoImelement(this.apiServes);
  @override
  Future<Either<Failure, List<BookModels>>> fetchNewsBooks() async {
    try {
      var data = await apiServes.get(
          endPoint: 'volumes?q=flowers&filter=free-ebooks&orderBy=newest');
      List<BookModels> books = [];
      for (var item in data['items']) {
        books.add(BookModels.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModels>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
