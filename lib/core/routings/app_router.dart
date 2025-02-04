import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:news_app/features/home/presentation/pages/home_page.dart';

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
