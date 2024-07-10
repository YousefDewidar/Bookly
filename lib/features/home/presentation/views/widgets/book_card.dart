import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.width});
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(AssetsData.testImg), fit: BoxFit.fill),
        color: Colors.amber,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
