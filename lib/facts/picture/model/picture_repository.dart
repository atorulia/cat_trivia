import 'package:cat_trivia/facts/picture/client/picture_client.dart';
import 'package:cat_trivia/facts/picture/model/picture.dart';

class PictureRepository {
  PictureRepository({required PictureClient pictureClient})
      : _pictureClient = pictureClient;

  final PictureClient _pictureClient;

  Future<Picture> getPicture() async {
    final pictures = await _pictureClient.getPictures();

    return pictures.first;
  }
}
