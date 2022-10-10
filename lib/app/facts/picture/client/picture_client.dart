import 'package:cat_trivia/app/facts/picture/model/picture.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'picture_client.g.dart';

@RestApi(baseUrl: "https://api.thecatapi.com/v1/")
abstract class PictureClient {
  factory PictureClient(Dio dio, {String baseUrl}) = _PictureClient;

  @GET("/images/search")
  Future<List<Picture>> getPictures();
}
