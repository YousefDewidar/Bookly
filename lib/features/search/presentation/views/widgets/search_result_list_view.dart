import 'package:bookly/features/home/presentation/views/widgets/newest_book_card.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) =>  
      // NewestBookCard(),
      SizedBox()
    );
  }
}
