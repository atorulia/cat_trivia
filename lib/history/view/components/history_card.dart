import 'package:cat_trivia/app/view/colors.dart';
import 'package:cat_trivia/components/texts/body1_text.dart';
import 'package:cat_trivia/components/texts/body2_text.dart';
import 'package:cat_trivia/facts/fact/model/fact.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({Key? key, required this.fact}) : super(key: key);

  final Fact fact;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ComponentColors.secondaryColor.withOpacity(.4),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Body1Text(fact.fact),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Body2Text(
                DateFormat('yyyy-MM-dd kk:mm').format(fact.creationDate),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
