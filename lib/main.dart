import 'package:cat_trivia/app/app.dart';
import 'package:cat_trivia/app/app_bloc_observer.dart';
import 'package:cat_trivia/facts/fact/client/fact_client.dart';
import 'package:cat_trivia/facts/fact/model/fact_repository.dart';
import 'package:cat_trivia/facts/picture/client/picture_client.dart';
import 'package:cat_trivia/facts/picture/model/picture_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  final dio = Dio();

  final pictureClient = PictureClient(dio);
  final factClient = FactClient(dio);

  final pictureRepository = PictureRepository(pictureClient: pictureClient);
  final factRepository = FactRepository(factClient: factClient);

  runApp(App(
    pictureRepository: pictureRepository,
    factRepository: factRepository,
  ));
}
