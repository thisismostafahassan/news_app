import 'package:flutter/material.dart';
import 'package:news_app/core/constants/api_constants.dart';
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
            CategoryWidget(
              imagePath: 'assets/politics.jpg',
              categoryName: 'Politics',
              path: ApiConstants.politics,
            ),
            CategoryWidget(
              imagePath: 'assets/sports.avif',
              categoryName: 'Sports',
              path: ApiConstants.sports,
            ),
            CategoryWidget(
              imagePath: 'assets/health.avif',
              categoryName: 'Health',
              path: ApiConstants.health,
            ),
            CategoryWidget(
              imagePath: 'assets/crypto.png',
              categoryName: 'Crypto',
              path: ApiConstants.crypto,
            ),
            CategoryWidget(
              imagePath: 'assets/drama.jpg',
              categoryName: 'Drama',
              path: ApiConstants.drama,
            ),
            CategoryWidget(
              imagePath: 'assets/entertainment.png',
              categoryName: 'Entertainment',
              path: ApiConstants.entertainment,
            ),
          ],
        ),
      ),
    );
  }
}
