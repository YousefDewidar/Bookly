import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_cases/featch_newest_books_use_case.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.featchNewestBooksUseCase) : super(NewestBooksInitial());

  final FeatchNewestBooksUseCase featchNewestBooksUseCase;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());

    var result = await featchNewestBooksUseCase.call();
    
    result.fold(
      (failuer) {
        emit(const NewestBooksFailure('No internet connection'));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
