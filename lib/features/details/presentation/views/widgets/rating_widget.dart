import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.book,
  });
  final BookEntity book;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.amber,
        ),
        const Space(dir: 'h', 5),
        Text((book.rating).toString(),
            style: Styles.style22.copyWith(fontSize: 19)),
        const Space(dir: 'h', 6),
        Text('(${book.rating})', style: Styles.greyStyle),
      ],
    );
  }
}
