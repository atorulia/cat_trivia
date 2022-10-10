import 'package:cat_trivia/facts/client/fact_client.dart';
import 'package:cat_trivia/facts/model/fact.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FactRepository {
  FactRepository({required FactClient factClient}) : _factClient = factClient;

  final FactClient _factClient;

  Future<Fact> getFact() async {
    final fact = await _factClient.getFact();

    saveFact(fact);

    return fact;
  }

  List<Fact> loadFacts() {
    final box = Hive.box<Fact>('facts');

    return box.values.toList();
  }

  void saveFact(Fact fact) {
    final box = Hive.box<Fact>('facts');

    box.add(fact);
  }
}
