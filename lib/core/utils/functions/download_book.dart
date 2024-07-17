  import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> downloadBook({required BookModel book, required context}) async {
    if (book.accessInfo!.pdf!.isAvailable ?? false) {
      final Uri url = Uri.parse(book.accessInfo!.pdf!.acsTokenLink ?? '');
      await launchUrl(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        snackBarAnimationStyle: AnimationStyle(curve: Curves.bounceIn),
        const SnackBar(content: Text(textAlign: TextAlign.center,'Not available'))
      );
    }
  }