import 'package:flutter/material.dart';

Widget loadPngImage(
  String imageName, {
  double? width,
  double? height,
  Color? color,
}) {
  return Image.asset(
    'assets/images/png/$imageName.png',
    height: height,
    width: width,
    color: color,
  );
}
