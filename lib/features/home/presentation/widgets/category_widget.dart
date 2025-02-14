import 'package:flutter/material.dart';
import 'package:news_app/core/routings/app_router.dart';
import 'package:news_app/core/utils/routing_utils.dart';
import 'package:news_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:news_app/features/home/presentation/pages/category_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/utils/responsive_utils.dart';

class CategoryWidget extends StatelessWidget {
  final String imagePath;
  final String categoryName;

  final String path;
  const CategoryWidget(
      {super.key,
      required this.imagePath,
      required this.categoryName,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppRouter.homeBloc.add(GetSelectedCategoryEvent(categoryPath: path));
        pushToNamedScreen(context, routeName: CategoryPage.routeName).then((_) {
          AppRouter.homeBloc.add(ResetEvent());
        });
      },
      child: Container(
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
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color:
                  const Color.fromARGB(255, 91, 59, 59).withValues(alpha: 0.5),
            ),
            child: Center(
              child: FittedBox(
                child: Text(
                  categoryName,
                  style: TextStyle(
                    fontSize: widthPercentage(30).w,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
