import 'package:flutter/material.dart';
import 'package:news_app/core/routings/app_router.dart';
import 'package:news_app/core/utils/cached_network_image.dart';

import 'package:news_app/core/utils/responsive_utils.dart';
import 'package:news_app/core/utils/routing_utils.dart';
import 'package:news_app/core/widgets/custome_circular_indicator.dart';
import 'package:news_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../features/home/domain/entities/article.dart';
import '../../features/home/presentation/pages/selected_article_details.dart';

class ArticleWidget extends StatelessWidget {
  final Article? selectedArticle;

  const ArticleWidget({
    super.key,
    required this.selectedArticle,
  });

  @override
  Widget build(BuildContext context) {
    final homeBloc = AppRouter.homeBloc;

    return GestureDetector(
      onTap: () {
        homeBloc
            .add(GetSelectedArticleEvent(selectedArticle: selectedArticle!));
        pushToNamedScreen(context,
            routeName: SelectedArticleDetailsPage.routeName);
      },
      child: Padding(
        padding: EdgeInsets.only(
          top: widthPercentage(8).w,
          bottom: widthPercentage(16).w,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: widthPercentage(8).w,
                horizontal: widthPercentage(12).w,
              ),
              height: widthPercentage(150).w,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widthPercentage(16).w),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(widthPercentage(12).w),
                child: selectedArticle!.urlToImage != null
                    ? myCachedNetworkImage(
                        imageUrl: selectedArticle!.urlToImage!,
                        placeHolder: CustomeCircularIndicator(
                          padding: EdgeInsets.only(
                            bottom: widthPercentage(30).w,
                          ),
                        ))
                    : Image.asset(
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
                    selectedArticle!.title!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: widthPercentage(15).w,
                    ),
                  ),
                  subtitle: Text(
                    selectedArticle!.description != null
                        ? selectedArticle!.description!
                        : 'This article has no description',
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
