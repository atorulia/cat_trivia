import 'package:cat_trivia/app/view/colors.dart';
import 'package:flutter/material.dart';

class MediumButton extends StatelessWidget {
  const MediumButton.prymary({
    Key? key,
    required this.data,
    this.onTap,
  })  : _color = ComponentColors.primaryColor,
        _textColor = ComponentColors.buttonTextColor,
        super(key: key);

  const MediumButton.secondary({
    Key? key,
    required this.data,
    this.onTap,
  })  : _color = ComponentColors.secondaryColor,
        _textColor = ComponentColors.buttonTextColor,
        super(key: key);

  final String data;
  final VoidCallback? onTap;

  final Color _color;
  final Color _textColor;

  static final _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: _borderRadius,
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
          color: _color,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                data,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(color: _textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
