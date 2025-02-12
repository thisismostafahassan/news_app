import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/widgets/article_widget.dart';

import '../bloc/home_bloc.dart';

class MainListviewWidget extends StatelessWidget {
  const MainListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final homeBloc = context.watch<HomeBloc>();
        return SliverToBoxAdapter(
            child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: homeBloc.allArticles.length,
          itemBuilder: (context, index) {
            return ArticleWidget(
              imageUrl: homeBloc.allArticles[index].urlToImage,
              title: homeBloc.allArticles[index].title!,
              subTitle: homeBloc.allArticles[index].description,
            );
          },
        ));
      },
    );
  }
}
