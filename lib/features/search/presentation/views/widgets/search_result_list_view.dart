import 'package:bookly/features/home/presentation/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) => const BestSellerCard(),
    );
  }
}
