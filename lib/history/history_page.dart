import 'dart:async';

import 'package:cat_trivia/components/buttons/button_back.dart';
import 'package:cat_trivia/components/texts/headline5_text.dart';
import 'package:cat_trivia/components/texts/subtitle1_text.dart';
import 'package:cat_trivia/history/cubit/history_cubit.dart';
import 'package:cat_trivia/history/view/history_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  static Page<void> get page => const MaterialPage<void>(child: HistoryPage());

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute(
        builder: (context) => const HistoryPage(),
      );

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  void initState() {
    unawaited(context.read<HistoryCubit>().loadFactHistory());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HistoryPageAppBar(),
      body: HistoryView(),
    );
  }
}

class HistoryPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HistoryPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ButtonBack(
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Headline5Text('Facts history'),
                Subtitle1Text('there is your cat facts history'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
