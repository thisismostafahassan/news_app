import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../utils/responsive_utils.dart';

class PercentageSizedBox extends StatelessWidget {
  final double? height;
  final double? width;
  const PercentageSizedBox({super.key, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height != null ? widthPercentage(height!).w : 0.0,
      width: width != null ? widthPercentage(width!).w : 0.0,
    );
  }
}
