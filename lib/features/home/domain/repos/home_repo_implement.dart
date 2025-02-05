import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImplement implements HomeRepo {
  final ApiService apiService;

  HomeRepoImplement(this.apiService);

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      // var data = await apiService.get(
      //     endPoint: 'volumes?Filtering=free-ebooks&q=computers&Sorting=newest');
      // List<BookModel> books = [];
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }

      return right([]);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      // var data = await apiService.get(
      //     endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      // List<BookModel> books = [];
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }

      return right([]);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks(
      {required cat}) async {
    try {
      // var data = await apiService.get(
      //     endPoint: 'volumes?Filtering=free-ebooks&q=$cat');
      // List<BookModel> books = [];
      // for (var item in data['items']) {
      //   books.add(BookModel.fromJson(item));
      // }

      return right([]);
    } catch (e) {
      return left(ServerFailure());
    }
  }
}
