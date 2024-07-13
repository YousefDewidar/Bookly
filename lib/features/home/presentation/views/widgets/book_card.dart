import 'package:bookly/features/details/presentation/views/details_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.width, this.marginRight = 12.0, required this.imgUrl});
  final double width;
  final double marginRight;
  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const DetailsView(), transition: Transition.rightToLeft);
      },
      child: Container(
        margin: EdgeInsets.only(right: marginRight),
        width: width,
        decoration:  BoxDecoration(
          image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.fill),
          color: Colors.transparent,
          borderRadius:const BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
