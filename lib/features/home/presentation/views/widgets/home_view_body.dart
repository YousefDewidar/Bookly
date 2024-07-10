import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookListView(),
          Space(50),
          Text('Best Seller', style: Styles.midStyle),
          Space(20),
          BestSellerListView(),
        ],
      ),
    );
  }
}

