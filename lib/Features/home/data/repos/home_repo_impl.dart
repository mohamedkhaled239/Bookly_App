import 'package:bookly_app/Features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_app/Features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<Bookmodel>>> fetchNewsetBooks() async {
    try {
      var data = await apiService.get(
          endpPoint:
              'volumes?Filtering=free-ebooks&sorting=newest &q=subject:Progreamming');

      List<Bookmodel> books = [];

      for (var item in data['items']) {
        books.add(Bookmodel.fromJson(item));
      }
      return right(books);
    } on DioException catch (e) {
      // Catch Dio exceptions specifically
      return left(ServerFailures.fromDioException(e));
    } catch (e) {
      return left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<Bookmodel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
