import 'package:bookly/core/utils/functions/download_book.dart';
import 'package:bookly/core/utils/functions/lanch_url_fun.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class PreviewOrDownloadButtons extends StatelessWidget {
  const PreviewOrDownloadButtons({
    super.key,
    required this.book,
  });
  final BookModel book;



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            downloadBook(book: book, context: context);
          },
          child: const DownloadWidget(),
        ),
        GestureDetector(
          onTap: () {
            lanchUrlFun(book: book, context: context);
          },
          child: const PreviewWidget(),
        ),
      ],
    );
  }
}

class PreviewWidget extends StatelessWidget {
  const PreviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 38,
      height: 50,
      decoration: const BoxDecoration(
        color: Color(0xffEF8262),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      child: Center(
        child: Text(
          'Preview',
          style: Styles.style22.copyWith(fontSize: 17),
        ),
      ),
    );
  }
}

class DownloadWidget extends StatelessWidget {
  const DownloadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 38,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
      child: Center(
        child: Text(
          'Download',
          style: Styles.style22.copyWith(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
