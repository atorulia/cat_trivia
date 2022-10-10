import 'package:cat_trivia/app/app.dart';
import 'package:cat_trivia/facts/fact/client/fact_client.dart';
import 'package:cat_trivia/facts/picture/client/picture_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() async {
  final dio = Dio();

  final pictureClient = PictureClient(dio);
  final factClient = FactClient(dio);

  runApp(const App());
}
