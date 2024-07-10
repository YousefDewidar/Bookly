import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.builder(
        padding: const EdgeInsets.only(top: 20),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const BookCard(),
      ),
    );
  }
}
