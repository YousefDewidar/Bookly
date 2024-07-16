import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard(
      {super.key,
      required this.book,
      required this.width,
      this.marginR = 0.0});
  final BookModel book;
  final double width;
  final double marginR;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: EdgeInsets.only(right: marginR),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: book.volumeInfo!.imageLinks!.thumbnail.toString(),
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) =>
              const Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
