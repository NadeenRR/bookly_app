import 'package:bookly_app/Features/home/data/models/book_models/book_models.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure,List<BookModels>>> fetchNewsBooks();
  Future<Either<Failure,List<BookModels>>> fetchFeaturedBooks();
  Future<Either<Failure,List<BookModels>>> fetchSimilerBooks({required String category});

}
