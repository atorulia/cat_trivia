import 'package:cat_trivia/facts/fact/model/fact.dart';
import 'package:cat_trivia/history/view/components/history_card.dart';
import 'package:flutter/material.dart';

class HistoryListView extends StatelessWidget {
  const HistoryListView({
    Key? key,
    required this.facts,
  }) : super(key: key);

  final List<Fact> facts;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(horizontal: 16) +
          const EdgeInsets.only(bottom: 32),
      itemCount: facts.length,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 16,
        );
      },
      itemBuilder: (BuildContext context, int index) {
        final fact = facts[index];
        return HistoryCard(fact: fact);
      },
    );
  }
}
