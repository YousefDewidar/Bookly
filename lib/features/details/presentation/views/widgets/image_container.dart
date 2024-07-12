
import 'package:bookly/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(image: AssetImage(AssetsData.testImg))),
    );
  }
}
