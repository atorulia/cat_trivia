import 'package:cat_trivia/app/view/assets.dart';
import 'package:cat_trivia/components/texts/headline1_text.dart';
import 'package:cat_trivia/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  late final Future<LottieComposition> _composition;
  bool _animate = false;

  @override
  void initState() {
    _composition = _loadComposition();

    _composition.then((composition) {
      final duration = composition.duration;

      Future.delayed(duration, () {
        setState(() {
          _animate = true;
        });
        Future.delayed(const Duration(milliseconds: 500), () {
          Navigator.of(context).pushReplacement(_buildRoute(const HomePage()));
        });
      });
    });
    super.initState();
  }

  Future<LottieComposition> _loadComposition() async {
    var assetData = await rootBundle.load(Assets.splashCatAnimation);
    return await LottieComposition.fromByteData(assetData);
  }

  Route _buildRoute(Widget child) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionDuration: const Duration(milliseconds: 300),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: Tween(
            begin: 0.0,
            end: 1.0,
          ).animate(
            CurvedAnimation(curve: Curves.easeInOut, parent: animation),
          ),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Lottie.asset(
            Assets.splashCatAnimation,
            repeat: false,
          ),
        ),
        AnimatedOpacity(
          opacity: _animate ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 600),
          child: const Center(
            child: Headline1Text('Cat Trivia'),
          ),
        ),
      ],
    );
  }
}
