import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/details/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly/features/details/presentation/views/widgets/details_app_bar.dart';
import 'package:bookly/features/details/presentation/views/widgets/free_or_paid_buttons.dart';
import 'package:bookly/features/details/presentation/views/widgets/image_container.dart';
import 'package:bookly/features/details/presentation/views/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24.0, right: 24.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DetailsAppBar(),
          Space(10),
          ImageContainer(),
          Space(8),
          Text('The Jungle Book',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
          Space(3),
          Text('The Jungle Book',
              textAlign: TextAlign.center, style: Styles.greyStyle),
          Space(3),
          RatingWidget(),
          Space(35),
          FreeOrPaidButtons(),
          Space(35),
          Text('You can also like', style: Styles.style18),
          Space(8),
          AlsoLikeListView(),
        ],
      ),
    );
  }
}



