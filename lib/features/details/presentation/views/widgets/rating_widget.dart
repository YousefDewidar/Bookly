import 'package:bookly/core/utils/space.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: Colors.amber,
        ),
        const Space(dir: 'h', 5),
        Text('4.8', style: Styles.style22.copyWith(fontSize: 19)),
        const Space(dir: 'h', 6),
        const Text('(2390)', style: Styles.greyStyle),
      ],
    );
  }
}
