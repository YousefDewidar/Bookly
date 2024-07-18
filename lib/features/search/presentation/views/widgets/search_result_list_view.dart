import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_book_card.dart';
import 'package:bookly/features/search/presentation/view_model/search%20cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchFailure) {
          return Center(
              child: Text(
            state.errMessage,
            style: Styles.style18,
          ));
        } else if (state is SearchSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) =>
                  NewestBookCard(book: state.books[index]));
        } else if (state is SearchInitial) {
          return const SizedBox();
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 100,
        height: 100,
        child: LoadingIndicator(
                  indicatorType: Indicator.ballGridPulse,
                  colors: [
        Colors.red,
        Color.fromARGB(255, 14, 1, 134),
        Colors.blue,
        Colors.green,
        Colors.purple,
        Colors.orange,
        Colors.pink,
                  ],
                ),
      ),
    );
  }
}
