import 'package:bloc/bloc.dart';
import 'package:cat_trivia/facts/fact/model/fact.dart';
import 'package:cat_trivia/facts/fact/model/fact_repository.dart';
import 'package:equatable/equatable.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit({required FactRepository factRepository})
      : _factRepository = factRepository,
        super(HistoryInitial());

  final FactRepository _factRepository;

  Future<void> loadFactHistory() async {
    emit(HistoryLoading());

    try {
      final facts = _factRepository.loadFacts();

      emit(HistoryLoaded(facts: facts));
    } catch (e) {
      emit(const HistoryError('Something went wrong...'));
    }
  }
}
