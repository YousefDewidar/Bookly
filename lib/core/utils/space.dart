import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  const Space(this.height, {super.key, this.dir = 'v'});
  final double height;
  final String dir;

  @override
  Widget build(BuildContext context) {
    if (dir == 'v') {
      return SizedBox(
        height: height,
      );
    } else if (dir == 'h') {
      return SizedBox(
        width: height,
      );
    } else {
      return const SizedBox(
        width: 0,
      );
    }
  }
}
