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
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const DetailsAppBar(),
          const Space(10),
          // ImageContainer(

          //   height: MediaQuery.of(context).size.height * 0.37,
          // ),
          const Space(8),
          const Text('The Jungle Book',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),
          const Space(3),
          const Text('The Jungle Book',
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
