import 'package:cat_trivia/app/view/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox.square(
        dimension: 24,
        child: Center(
          child: SvgPicture.asset(
            Assets.chevronLeftIcon,
            width: 24,
          ),
        ),
      ),
    );
  }
}
