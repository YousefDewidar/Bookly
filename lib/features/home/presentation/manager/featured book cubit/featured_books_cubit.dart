import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/featch_featured_books_use_case.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.featchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());
  final FeatchFeaturedBooksUseCase featchFeaturedBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featchFeaturedBooksUseCase.call();

    result.fold(
      (failuer) {
        emit(const FeaturedBooksFailure('No internet connection'));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
