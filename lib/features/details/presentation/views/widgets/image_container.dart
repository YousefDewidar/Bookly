import 'package:bookly/core/utils/assets_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String imgUrl;

  const ImageContainer({
    super.key,
    this.width,
    required this.height,
    required this.imgUrl,
  });
  final double? width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: CachedNetworkImage(
        width: 150,
        imageUrl: imgUrl,
        fit: BoxFit.fill,
        errorWidget: (context, url, error) => const Icon(Icons.error),
        placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
      ),
    );

    // Container(
    //   height: height,
    //   width: width,
    //   decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(16),
    //       image: const DecorationImage(image: AssetImage(AssetsData.testImg))),
    // );
  }
}
