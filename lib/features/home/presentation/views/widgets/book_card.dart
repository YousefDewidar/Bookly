import 'package:bookly/features/details/presentation/views/details_view.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BookCard extends StatelessWidget {
  const BookCard(
      {super.key,
      required this.imgUrl});
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: GestureDetector(
        onTap: () {
          Get.to(() => const DetailsView(), transition: Transition.rightToLeft);
        },
        child: CachedNetworkImage(
          width: 150,
          imageUrl: imgUrl,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) =>const Icon(Icons.error),
        placeholder: (context, url) =>const Center(child:  CircularProgressIndicator()),
        ),
      ),
    );
  }
}
