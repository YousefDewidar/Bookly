import 'package:bookly/features/home/presentation/views/widgets/best_seller_card.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) => const BestSellerCard(),
        ),
    );
  }
}
