import 'package:flutter/material.dart';
import 'package:news_app/core/utils/responsive_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: widthPercentage(120).w,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: widthPercentage(120).w,
              height: widthPercentage(60).w,
              margin: EdgeInsets.symmetric(horizontal: widthPercentage(8).w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
