import 'package:bookly/core/utils/custom_loading_ind.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_book_card.dart';
import 'package:bookly/features/search/presentation/view_model/search%20cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchFailure) {
          return Center(child: Text(state.errMessage,style: Styles.style18,));
        } else if (state is SearchSuccess) {
          return ListView.builder(
              itemCount:  state.books.length,
              itemBuilder: (context, index) =>
                  NewestBookCard(book: state.books[index]));
        } else if (state is SearchInitial) {
          return const SizedBox();
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
