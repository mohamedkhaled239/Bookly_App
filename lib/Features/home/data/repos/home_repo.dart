import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<Bookmodel>>> fetchBestSellerBooks();
  Future<Either<Failures, List<Bookmodel>>> fetchFeaturedBooks();
}
