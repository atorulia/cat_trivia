import 'package:cat_trivia/app/view/assets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BadCatAnimation extends StatefulWidget {
  const BadCatAnimation({Key? key}) : super(key: key);

  @override
  State<BadCatAnimation> createState() => _BadCatAnimationState();
}

class _BadCatAnimationState extends State<BadCatAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      Assets.badCatAnimation,
      controller: _controller,
      frameRate: FrameRate(60),
      onLoaded: (composition) {
        _controller
          ..duration = const Duration(milliseconds: 1600)
          ..forward()
          ..repeat();
      },
    );
  }
}
