import 'package:bookly/core/utils/shimmer/shimmer.dart';
import 'package:bookly/features/home/presentation/view%20model/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/newest_book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) => NewestBookCard(
              book: state.books[index],
            ),
          );
        } else if (state is NewestBooksLoading) {
          return const Center(child: ShimmerNewestList());
        } else if (state is NewestBooksFailure) {
          return Text(state.errMessage);
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
