import 'package:cat_trivia/facts/fact/client/fact_client.dart';
import 'package:cat_trivia/facts/fact/model/fact.dart';
import 'package:cat_trivia/facts/picture/client/picture_client.dart';
import 'package:cat_trivia/facts/picture/model/picture.dart';

class FactRepository {
  FactRepository({required FactClient factClient}) : _factClient = factClient;

  final FactClient _factClient;

  Future<Fact> getFact() async {
    final fact = await _factClient.getFact();

    return fact;
  }
}
