import 'package:flutter/material.dart';
import 'package:news_app/core/routings/app_router.dart';
import 'package:news_app/core/utils/responsive_utils.dart';
import 'package:news_app/core/widgets/percentage_sized_box.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SelectedArticleDetailsPage extends StatelessWidget {
  static const String routeName = '/SelectedArticleDetailsPage';
  const SelectedArticleDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeBloc = AppRouter.homeBloc;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: widthPercentage(12).w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              homeBloc.selectedArticle.title!,
              style: TextStyle(
                fontSize: widthPercentage(20).w,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            PercentageSizedBox(height: 20),
            //
            homeBloc.selectedArticle.urlToImage != null
                ? Image.network(homeBloc.selectedArticle.urlToImage!)
                : Image.asset(
                    'assets/default_news.png',
                    fit: BoxFit.fill,
                  ),
            //
            PercentageSizedBox(height: 20),
            Text(
              homeBloc.selectedArticle.description != null
                  ? homeBloc.selectedArticle.description!
                  : '',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: widthPercentage(15).w,
                color: Colors.blueGrey,
                fontWeight: FontWeight.w500,
                textBaseline: TextBaseline.ideographic,
              ),
            ),
            //
            PercentageSizedBox(height: 20),
            if (homeBloc.selectedArticle.source!.name != null)
              Text(
                "Source: ${homeBloc.selectedArticle.source!.name!}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: widthPercentage(12).w,
                ),
              )
          ],
        ),
      ),
    );
  }
}
