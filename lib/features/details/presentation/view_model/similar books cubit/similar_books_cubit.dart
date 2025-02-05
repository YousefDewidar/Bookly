import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String cat}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(cat: cat);

    result.fold(
      (failuer) {
        emit(const SimilarBooksFailure('error'));
      },
      (books) {
        emit(SimilarBooksSuccess(books));
      },
    );
  }
}
