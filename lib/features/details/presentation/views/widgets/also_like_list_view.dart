import 'package:bookly/core/utils/shimmer/shimmer.dart';
import 'package:bookly/features/details/presentation/view_model/similar%20books%20cubit/similar_books_cubit.dart';
import 'package:bookly/features/details/presentation/views/details_view.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlsoLikeListView extends StatefulWidget {
  const AlsoLikeListView({
    super.key,
    required this.myBook,
  });
  final BookModel myBook;

  @override
  State<AlsoLikeListView> createState() => _AlsoLikeListViewState();
}

class _AlsoLikeListViewState extends State<AlsoLikeListView> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(cat: widget.myBook.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsView(myBook: state.books[index]),
                          ));
                    },
                    child: Hero(
                      tag: state.books[index].id!,
                      child: BookCard(
                        width: 120,
                        book: state.books[index],
                      ),
                    ),
                  ),
                );
              },
            );
          } else if (state is SimilarBooksFailure) {
            return const Center(
              child: Icon(Icons.error),
            );
          } else {
            return const ShimmerFeatureList(width: 120,);
          }
        },
      ),
    );
  }
}
