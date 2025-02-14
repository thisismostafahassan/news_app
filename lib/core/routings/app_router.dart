import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:news_app/features/home/presentation/pages/home_page.dart';
import 'package:news_app/features/home/presentation/pages/selected_article_details.dart';

import '../../main.dart';

class AppRouter {
  static final homeBloc = HomeBloc();

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // Start
      case '/':
        return CupertinoPageRoute(
          builder: (context) => BlocProvider.value(
            value: homeBloc,
            child: const HomePage(),
          ),
        );
      // Selected Article Details Page
      case SelectedArticleDetailsPage.routeName:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider.value(
            value: homeBloc,
            child: const SelectedArticleDetailsPage(),
          ),
        );
      default:
        return CupertinoPageRoute(
          builder: (context) => BlocProvider.value(
            value: homeBloc,
            child: const MyApp(),
          ),
        );
    }
  }
}
