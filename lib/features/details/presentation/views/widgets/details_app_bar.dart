import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.close, size: 27),
          onPressed: () {
            Get.close(1);
          },
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart_outlined, size: 26),
          onPressed: () {},
        ),
      ],
    );
  }
}
