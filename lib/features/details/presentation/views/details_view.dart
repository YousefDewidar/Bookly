import 'package:bookly/features/details/presentation/views/widgets/details_view_body.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.myBook});
  final BookModel myBook;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DetailsViewBody(myBook: myBook),
      ),
    );
  }
}
