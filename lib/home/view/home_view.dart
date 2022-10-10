import 'package:cat_trivia/app/view/assets.dart';
import 'package:cat_trivia/components/animations/bad_cat_animation.dart';
import 'package:cat_trivia/components/buttons/medium_buttom.dart';
import 'package:cat_trivia/components/texts/body1_text.dart';
import 'package:cat_trivia/components/texts/subtitle2_text.dart';
import 'package:cat_trivia/facts/fact/model/fact.dart';
import 'package:cat_trivia/facts/picture/model/picture.dart';
import 'package:cat_trivia/history/history_page.dart';
import 'package:cat_trivia/home/cubit/cat_fact_cubit.dart';
import 'package:cat_trivia/home/view/components/cat_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CatFactCubit, CatFactState>(
        builder: (context, state) {
          if (state is CatFactLoading) {
            return _buildLoading();
          } else if (state is CatFactLoaded) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildCatFact(state.picture, state.fact),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  child: Column(
                    children: [
                      MediumButton.prymary(
                        data: 'Another fact!',
                        onTap: () => context.read<CatFactCubit>().getCatFact(),
                      ),
                      const SizedBox(height: 16),
                      MediumButton.secondary(
                        data: 'Fact history',
                        onTap: () =>
                            Navigator.of(context).push(HistoryPage.route),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else if (state is CatFactError) {
            return _buildError(state.errorMessage);
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _buildCatFact(Picture picture, Fact fact) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CatPicture(picture: picture),
          const SizedBox(height: 16),
          Body1Text(
            fact.data,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildLoading() {
    return Center(
      child: Lottie.asset(Assets.loadingCatanimation),
    );
  }

  Widget _buildError(String errorMessage) {
    return Center(
      child: Stack(
        children: [
          const Align(
            alignment: Alignment.bottomCenter,
            child: BadCatAnimation(),
          ),
          Center(
            child: Subtitle1Text(
              errorMessage,
              // textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
