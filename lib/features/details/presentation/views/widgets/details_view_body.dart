import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/details/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly/features/details/presentation/views/widgets/details_app_bar.dart';
import 'package:bookly/features/details/presentation/views/widgets/free_or_paid_buttons.dart';
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
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DetailsAppBar(),
          const Space(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60.0),
            child: BookCard(book: myBook, width: 0),
          ),
          const Space(10),
          Text(
            myBook.volumeInfo!.title!,
            textAlign: TextAlign.center,
            style: GoogleFonts.afacad(
                fontSize: 37, height: 1.2, fontWeight: FontWeight.w500),
          ),
          const Space(3),
           Text(myBook.volumeInfo!.authors![0],
              textAlign: TextAlign.center, style: Styles.greyStyle),
          const Space(3),
          // const RatingWidget(),
          const Space(35),
          const FreeOrPaidButtons(),
          const Expanded(child: Space(50)),
          const Text('You can also like', style: Styles.style18),
          const Space(12),
          const AlsoLikeListView(),
          const Expanded(child: Space(20)),
        ],
      ),
    );
  }
}
