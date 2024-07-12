import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.width, this.marginRight = 12.0});
  final double width;
  final double marginRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: marginRight),
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsData.testImg), fit: BoxFit.fill),
        color: Colors.transparent,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
