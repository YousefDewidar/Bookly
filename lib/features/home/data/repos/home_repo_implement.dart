import 'package:dartz/dartz.dart';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/data_source/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_source/home_remote_data_source.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';

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
      List<BookEntity> localBooks = localDataSource.fetchFeaturedBooks();
      List<BookEntity> remoteBooks =
          await remoteDataSource.fetchFeaturedBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }
      return right(remoteBooks);
    } catch (e) {
      return left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      List<BookEntity> localBooks = localDataSource.fetchNewestBooks();
      List<BookEntity> remoteBooks = await remoteDataSource.fetchNewestBooks();
      if (localBooks.isNotEmpty) {
        return right(localBooks);
      }
      return right(remoteBooks);
    } catch (e) {
      return left(Failure());
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
      return left(Failure());
    }
  }
}
