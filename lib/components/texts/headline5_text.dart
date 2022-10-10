import 'package:cat_trivia/app/view/colors.dart';
import 'package:flutter/material.dart';

class Headline5Text extends StatelessWidget {
  const Headline5Text(this.data, {Key? key, Color? color})
      : _color = color ?? ComponentColors.titleTextColor,
        super(key: key);

  final String data;
  final Color? _color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.headline5!.copyWith(color: _color),
    );
  }
}
