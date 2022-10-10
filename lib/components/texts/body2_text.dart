import 'package:cat_trivia/app/view/colors.dart';
import 'package:flutter/material.dart';

class Body2Text extends StatelessWidget {
  const Body2Text(
    this.data, {
    Key? key,
    Color? color,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.softWrap,
  })  : _color = color ?? ComponentColors.bodyTextColor,
        super(key: key);

  final String data;
  final Color? _color;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.bodyText2!.copyWith(color: _color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      softWrap: softWrap,
    );
  }
}
