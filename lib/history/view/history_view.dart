import 'package:cat_trivia/app/view/assets.dart';
import 'package:cat_trivia/components/animations/bad_cat_animation.dart';
import 'package:cat_trivia/components/texts/subtitle1_text.dart';
import 'package:cat_trivia/facts/fact/model/fact.dart';
import 'package:cat_trivia/history/cubit/history_cubit.dart';
import 'package:cat_trivia/history/view/components/history_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryCubit, HistoryState>(
      builder: (context, state) {
        if (state is HistoryLoading) {
          return _buildLoading();
        } else if (state is HistoryLoaded) {
          return _buildHistory(state.facts);
        } else if (state is HistoryError) {
          return _buildError(state.errorMessage);
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Widget _buildHistory(List<Fact> facts) {
    if (facts.isEmpty) {
      return _buildEmptyHistory();
    } else {
      return HistoryListView(facts: facts);
    }
  }

  Widget _buildEmptyHistory() {
    return const Center(
      child: Subtitle1Text('No history yet'),
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
