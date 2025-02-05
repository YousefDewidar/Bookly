import 'package:bookly/core/use_case/use_case.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:dartz/dartz.dart';

import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';

class FetchSemilarBooksUseCase extends UseCase<List<BookEntity>, String> {
  HomeRepo homeRepo;
  FetchSemilarBooksUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<BookEntity>>> call([String? param]) {
    return homeRepo.fetchSimilarBooks(cat: param ?? '');
  }
}
