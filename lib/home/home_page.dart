import 'dart:async';

import 'package:cat_trivia/components/texts/headline5_text.dart';
import 'package:cat_trivia/components/texts/subtitle1_text.dart';
import 'package:cat_trivia/home/cubit/cat_fact_cubit.dart';
import 'package:cat_trivia/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static Page<void> get page => const MaterialPage<void>(child: HomePage());

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute(
        builder: (context) => const HomePage(),
      );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    unawaited(context.read<CatFactCubit>().getCatFact());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomePageAppBar(),
      body: HomeView(),
    );
  }
}

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Headline5Text('Welcome to Cat Trivia'),
          Subtitle1Text('that\'s a lot of cats!'),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
