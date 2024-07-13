import 'package:bookly/core/utils/assets_data.dart';
import 'package:bookly/features/search/presentation/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(AssetsData.logo, height: 22),
        IconButton(
            onPressed: () {
              Get.to(() => const SearchView(), transition: Transition.fade);
            },
            icon: const Icon(FontAwesomeIcons.magnifyingGlass))
      ],
    );
  }
}
