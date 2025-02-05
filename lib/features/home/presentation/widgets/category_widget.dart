import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/utils/responsive_utils.dart';

class CategoryWidget extends StatelessWidget {
  final String imagePath;
  const CategoryWidget({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widthPercentage(130).w,
        height: widthPercentage(60).w,
        margin: EdgeInsets.symmetric(horizontal: widthPercentage(8).w),
        padding: EdgeInsets.only(
          top: widthPercentage(60).w,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imagePath,
              )),
        ),
        child: Center(
          child: Container(
            height: widthPercentage(25).w,
            color: const Color.fromARGB(0, 201, 30, 30),
            child: Text('Data'),
          ),
        ));
  }
}
