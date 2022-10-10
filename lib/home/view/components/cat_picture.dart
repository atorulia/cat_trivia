import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_trivia/app/view/assets.dart';
import 'package:cat_trivia/app/view/colors.dart';
import 'package:cat_trivia/components/texts/subtitle1_text.dart';
import 'package:cat_trivia/facts/picture/model/picture.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class CatPicture extends StatelessWidget {
  const CatPicture({Key? key, required this.picture}) : super(key: key);

  final Picture picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ComponentColors.secondaryColor.withOpacity(.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Center(
            child: CachedNetworkImage(
              imageUrl: picture.url,
              progressIndicatorBuilder: (context, url, progress) {
                return Lottie.asset(Assets.loadingCatanimation);
              },
              errorWidget: (context, url, error) => Subtitle1Text(error),
            ),
          ),
        ),
      ),
    );
  }
}
