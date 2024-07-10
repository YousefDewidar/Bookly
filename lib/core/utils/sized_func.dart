import 'package:flutter/material.dart';

SizedBox space(double v, {String dir = 'v'}) {
  if (dir == 'v') {
    return SizedBox(
      height: v,
    );
  } else if (dir == 'h') {
    return SizedBox(
      width: v,
    );
  } else {
    return const SizedBox(
      width: 0,
    );
  }
}