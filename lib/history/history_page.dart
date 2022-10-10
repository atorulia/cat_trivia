import 'package:cat_trivia/history/view/history_view.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  static Page<void> get page => const MaterialPage<void>(child: HistoryPage());

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute(
        builder: (context) => const HistoryPage(),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HistoryView(),
    );
  }
}
