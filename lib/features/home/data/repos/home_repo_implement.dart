import 'package:dartz/dartz.dart';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:dio/dio.dart';

class HomeRepoImplement implements HomeRepo {
  HomeRemoteDataSource remoteDataSource;
  HomeLocalDataSource localDataSource;
  HomeRepoImplement({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks() async {
    try {
      List<BookEntity> books;
      books = localDataSource.fetchFeaturedBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await remoteDataSource.fetchFeaturedBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(errMessage: 'There is a error,please try again'),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> books;

      books = localDataSource.fetchNewestBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await remoteDataSource.fetchNewestBooks();
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(errMessage: 'There is a error,please try again'),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchSimilarBooks(
      {required String cat}) async {
    try {
      List<BookEntity> remoteBooks =
          await remoteDataSource.fetchSimilarBooks(cat: cat);
      return right(remoteBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(
        ServerFailure(errMessage: 'There is a error,please try again'),
      );
    }
  }
}
