import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/observer/my_bloc_observer.dart';
import 'package:news_app/core/routings/app_routing.dart';
import 'package:news_app/features/home/presentation/pages/home_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'features/home/presentation/bloc/home_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  final AppRouter appRouter = AppRouter();
  runApp(
    ResponsiveSizer(builder: (context, orientation, screenType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeBloc()),
        ],
        child: MaterialApp(
          home: MyApp(),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: appRouter.onGenerateRoute,
        ),
      );
    }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
