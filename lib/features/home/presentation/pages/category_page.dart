import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/routings/app_router.dart';
import 'package:news_app/core/utils/enum.dart';
import 'package:news_app/core/widgets/article_widget.dart';
import 'package:news_app/core/widgets/custome_circular_indicator.dart';
import 'package:news_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/utils/responsive_utils.dart';
import '../../../../core/widgets/nothing_widget.dart';

class CategoryPage extends StatelessWidget {
  static const String routeName = '/CategoryPage';
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: AppRouter.homeBloc
        ..add(GetSelectedCategoryArticlesEvent(
            path: AppRouter.homeBloc.categorypath)),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          final homeBloc = context.read<HomeBloc>();
          return Scaffold(
            body: homeBloc.categorycurrentState == RequestState.loaded &&
                    homeBloc.selectedArticles.isNotEmpty
                ? ListView.builder(
                    itemCount: homeBloc.selectedArticles.length,
                    itemBuilder: (context, index) {
                      return ArticleWidget(
                          selectedArticle: homeBloc.selectedArticles[index]);
                    })
                : homeBloc.categorycurrentState == RequestState.loading
                    ? CustomeCircularIndicator(
                        padding: EdgeInsets.symmetric(
                          vertical: widthPercentage(64).w,
                        ),
                      )
                    : NothingWidget(),
          );
        },
      ),
    );
  }
}
