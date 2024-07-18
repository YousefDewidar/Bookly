import 'package:bookly/core/utils/shimmer/shimmer.dart';
import 'package:bookly/features/details/presentation/views/details_view.dart';
import 'package:bookly/features/home/presentation/view%20model/featured%20book%20cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: ListView.builder(
              clipBehavior: Clip.none,
              padding: const EdgeInsets.only(top: 20),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Get.to(() => DetailsView(myBook: state.books[index]));
                },
                child: Hero(
                  tag: state.books[index].id!,
                  child: BookCard(
                    marginR: 14.0,
                    width: 150,
                    book: state.books[index],
                  ),
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return const ShimmerFeatureList();
        }
      },
    );
  }
}
