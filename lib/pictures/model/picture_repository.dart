import 'package:cat_trivia/pictures/client/picture_client.dart';
import 'package:cat_trivia/pictures/model/picture.dart';

class PictureRepository {
  PictureRepository({required PictureClient pictureClient})
      : _pictureClient = pictureClient;

  final PictureClient _pictureClient;

  Future<Picture> getPicture() async {
    final pictures = await _pictureClient.getPictures();

    if (pictures.isEmpty) {
      return pictures.first;
    } else {
      throw Exception('No pictures found');
    }
  }
}
