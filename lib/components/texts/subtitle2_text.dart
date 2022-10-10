import 'package:cat_trivia/app/view/colors.dart';
import 'package:flutter/material.dart';

class Subtitle1Text extends StatelessWidget {
  const Subtitle1Text(this.data, {Key? key, Color? color})
      : _color = color ?? ComponentColors.subtitleTextColor,
        super(key: key);

  final String data;
  final Color? _color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.subtitle2!.copyWith(color: _color),
    );
  }
}
