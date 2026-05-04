import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/feature/home/data/models/model_book/model_book.dart';
import 'package:dartz/dartz.dart';

abstract class RepoHome {
  Future<Either<List<ModelBook>, Failures>> fetchBestSellerBooks();
  Future<Either<List<ModelBook>, Failures>> fetchNewestBooks();
}
