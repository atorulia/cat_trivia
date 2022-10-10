import 'package:cat_trivia/app/app.dart';
import 'package:cat_trivia/app/facts/fact/client/fact_client.dart';
import 'package:cat_trivia/app/facts/picture/client/picture_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() async {
  final dio = Dio();

  final pictureClient = PictureClient(dio);
  final factClient = FactClient(dio);

  runApp(const App());
}
