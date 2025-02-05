import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/utils/responsive_utils.dart';

class CategoryWidget extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  const CategoryWidget(
      {super.key, required this.imagePath, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: widthPercentage(130).w,
        height: widthPercentage(60).w,
        margin: EdgeInsets.symmetric(horizontal: widthPercentage(8).w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                imagePath,
              )),
        ),
        child: Container(
          height: widthPercentage(60).w,
          width: double.infinity,
          padding: EdgeInsets.only(top: widthPercentage(45).w),
          color: const Color.fromARGB(255, 91, 59, 59).withValues(alpha: 0.5),
          child: Center(
            child: Text(
              categoryName,
              style: TextStyle(
                fontSize: widthPercentage(25).w,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ));
  }
}
