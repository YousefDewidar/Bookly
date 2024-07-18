import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/details/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly/features/details/presentation/views/widgets/details_app_bar.dart';
import 'package:bookly/features/details/presentation/views/widgets/preview_or_download_buttons.dart';
import 'package:bookly/features/details/presentation/views/widgets/rating_widget.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.myBook});
  final BookModel myBook;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DetailsAppBar(),
          const Space(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child:
                Hero(tag: myBook.id!, child: BookCard(book: myBook, width: 0)),
          ),
          const Space(20),
          Text(
            myBook.volumeInfo!.title!,
            textAlign: TextAlign.center,
            style: GoogleFonts.afacad(
                fontSize: 30, height: 1, fontWeight: FontWeight.w500),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Space(3),
          Text(myBook.volumeInfo!.authors![0],
              textAlign: TextAlign.center, style: Styles.greyStyle),
          const Space(3),
          RatingWidget(book: myBook),
          const Space(25),
          PreviewOrDownloadButtons(book: myBook),
          const Expanded(child: Space(50)),
          const Text('You can also like', style: Styles.style18),
          const Space(12),
          AlsoLikeListView(myBook: myBook),
          const Expanded(child: Space(20)),
        ],
      ),
    );
  }
}
