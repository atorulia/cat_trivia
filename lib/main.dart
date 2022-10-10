import 'package:cat_trivia/app/app.dart';
import 'package:cat_trivia/app/app_bloc_observer.dart';
import 'package:cat_trivia/facts/client/fact_client.dart';
import 'package:cat_trivia/facts/model/fact.dart';
import 'package:cat_trivia/facts/model/fact_repository.dart';
import 'package:cat_trivia/pictures/client/picture_client.dart';
import 'package:cat_trivia/pictures/model/picture_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  Bloc.observer = AppBlocObserver();

  initHive();

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

Future<void> initHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(FactAdapter());
  await Hive.openBox<Fact>('facts');
}
