import 'package:flutter/material.dart';

import 'package:news_app/core/utils/responsive_utils.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ArticleWidget extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String? subTitle;
  const ArticleWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
          top: widthPercentage(8).w,
          bottom: widthPercentage(16).w,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: widthPercentage(8).w),
              padding: EdgeInsets.symmetric(horizontal: widthPercentage(8).w),
              height: widthPercentage(150).w,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widthPercentage(16).w),
              ),
              child: imageUrl != null
                  ? ClipRRect(
                      borderRadius:
                          BorderRadius.circular(widthPercentage(12).w),
                      child: Image.network(
                        imageUrl!,
                        fit: BoxFit.fill,
                      ),
                    )
                  : ClipRRect(
                      borderRadius:
                          BorderRadius.circular(widthPercentage(12).w),
                      child: Image.asset(
                        'assets/default_news.png',
                        fit: BoxFit.fill,
                      ),
                    ),
            ),
            //
            Container(
              width: double.infinity,
              height: widthPercentage(65).w,
              color: Colors.white,
              padding: EdgeInsets.symmetric(
                vertical: widthPercentage(6).w,
              ),
              child: Center(
                child: ListTile(
                  title: Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: widthPercentage(15).w,
                    ),
                  ),
                  subtitle: Text(
                    subTitle ?? '',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: widthPercentage(10).w,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
