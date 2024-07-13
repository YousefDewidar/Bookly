import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5.0, right: 30.0, top: 20),
          child: SearchBar(),
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

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Get.close(1);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        const Expanded(child: SearchTextField()),
      ],
    );
  }
}
