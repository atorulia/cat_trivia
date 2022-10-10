import 'package:cat_trivia/facts/model/fact.dart';
import 'package:cat_trivia/facts/model/fact_repository.dart';
import 'package:cat_trivia/pictures/model/picture.dart';
import 'package:cat_trivia/pictures/model/picture_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'cat_fact_state.dart';

class CatFactCubit extends Cubit<CatFactState> {
  CatFactCubit({
    required PictureRepository pictureRepository,
    required FactRepository factRepository,
  })  : _pictureRepository = pictureRepository,
        _factRepository = factRepository,
        super(CatFactInitial());

  final PictureRepository _pictureRepository;
  final FactRepository _factRepository;

  Future<void> getCatFact() async {
    emit(CatFactLoading());

    try {
      final fact = await _factRepository.getFact();
      final picture = await _pictureRepository.getPicture();

      emit(CatFactLoaded(fact: fact, picture: picture));
    } catch (e) {
      debugPrint(e.toString());
      emit(const CatFactError('Something went wrong...'));
    }
  }
}
