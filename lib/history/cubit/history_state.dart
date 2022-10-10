part of 'history_cubit.dart';

abstract class HistoryState extends Equatable {
  const HistoryState();

  @override
  List<Object> get props => [];
}

class HistoryInitial extends HistoryState {}

class HistoryLoading extends HistoryState {}

class HistoryLoaded extends HistoryState {
  const HistoryLoaded({required this.facts});

  final List<Fact> facts;

  @override
  List<Object> get props => [facts];
}

class HistoryError extends HistoryState {
  const HistoryError(this.errorMessage);

  final String errorMessage;

  @override
  List<Object> get props => [errorMessage];
}
