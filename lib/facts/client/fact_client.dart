import 'package:cat_trivia/facts/model/fact.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'fact_client.g.dart';

@RestApi(baseUrl: "https://catfact.ninja/")
abstract class FactClient {
  factory FactClient(Dio dio, {String baseUrl}) = _FactClient;

  @GET("/fact?max_length=140")
  Future<Fact> getFact();
}
