import 'package:cat_trivia/app/app.dart';
import 'package:cat_trivia/app/facts/picture/client/picture_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main() async {
  final dio = Dio();

  final client = PictureClient(dio);

  client.getPictures().then((it) => logger.i(it));

  runApp(const App());
}
