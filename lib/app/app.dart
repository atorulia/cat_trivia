import 'package:cat_trivia/app/view/theme.dart';
import 'package:cat_trivia/facts/model/fact_repository.dart';
import 'package:cat_trivia/history/cubit/history_cubit.dart';
import 'package:cat_trivia/home/cubit/cat_fact_cubit.dart';
import 'package:cat_trivia/pictures/model/picture_repository.dart';
import 'package:cat_trivia/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({
    Key? key,
    required PictureRepository pictureRepository,
    required FactRepository factRepository,
  })  : _pictureRepository = pictureRepository,
        _factRepository = factRepository,
        super(key: key);

  final PictureRepository _pictureRepository;
  final FactRepository _factRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CatFactCubit>(
          create: (context) => CatFactCubit(
            pictureRepository: _pictureRepository,
            factRepository: _factRepository,
          ),
        ),
        BlocProvider<HistoryCubit>(
          create: (context) => HistoryCubit(
            factRepository: _factRepository,
          ),
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
