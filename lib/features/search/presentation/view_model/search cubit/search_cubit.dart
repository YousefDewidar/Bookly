import 'package:bloc/bloc.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/search/data/repo/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  SearchRepo searchRepo;
  TextEditingController controller = TextEditingController();

  fetchRus({required String word}) async {
    emit(SearchLoading());
    Either<Failure, List<BookModel>> res =
        await searchRepo.fetchResultBooks(word: word);

    res.fold(
      (l) {
        emit(const SearchFailure('Not found'));
      },
      (r) {
        emit(const SearchSuccess([]));
      },
    );
  }
}
