part of 'newest_books_cubit.dart';

sealed class NewestBooksState {
  const NewestBooksState();


}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessage;

  const NewestBooksFailure(this.errMessage);
}

final class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books;
  const NewestBooksSuccess(this.books);
}

final class NewestBooksLoading extends NewestBooksState {}
