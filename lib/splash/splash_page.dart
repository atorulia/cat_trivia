import 'package:cat_trivia/splash/view/splash_view.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  static Page<void> get page => const MaterialPage<void>(child: SplashPage());

  static MaterialPageRoute<dynamic> get route => MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashView(),
    );
  }
}
