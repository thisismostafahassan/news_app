import 'package:flutter/material.dart';
import 'package:news_app/core/utils/responsive_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'category_widget.dart';

class CategoriesListview extends StatelessWidget {
  const CategoriesListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: widthPercentage(80).w,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CategoryWidget(imagePath: 'assets/politics.jpg'),
            CategoryWidget(imagePath: 'assets/sports.avif'),
            CategoryWidget(imagePath: 'assets/health.avif'),
            CategoryWidget(imagePath: 'assets/crypto.png'),
            CategoryWidget(imagePath: 'assets/drama.jpg'),
            CategoryWidget(imagePath: 'assets/entertainment.png'),
          ],
        ),
      ),
    );
  }
}
