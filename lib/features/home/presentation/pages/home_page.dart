import 'package:flutter/material.dart';
import 'package:news_app/core/widgets/the_app_bar.dart';

import '../widgets/Categories_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static String routeName = '/HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: theAppBar(),
      body: CustomScrollView(
        slivers: [
          CategoriesWidget(),
        ],
      ),
    );
  }
}
