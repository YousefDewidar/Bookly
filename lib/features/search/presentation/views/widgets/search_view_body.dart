import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_bar.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';


class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10.0, right: 30.0, top: 15),
          child: CustomSearchBar(),
        ),
        Space(18),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Text('Search Result', style: Styles.style18),
        ),
        Space(16),
        Expanded(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: SearchResultListView(),
        )),
      ],
    );
  }
}

