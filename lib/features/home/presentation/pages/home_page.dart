import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/routings/app_router.dart';
import 'package:news_app/core/widgets/the_app_bar.dart';

import '../bloc/home_bloc.dart';
import '../widgets/categories_listview.dart';
import '../widgets/main_listview_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String routeName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: AppRouter.homeBloc..add(GetAllArticlesEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Scaffold(
            extendBodyBehindAppBar: false,
            body: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                theAppBar(),
                CategoriesListview(),
                MainListviewWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
