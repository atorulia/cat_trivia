part of 'cat_fact_cubit.dart';

abstract class CatFactState extends Equatable {
  const CatFactState();

  @override
  List<Object> get props => [];
}

class CatFactInitial extends CatFactState {}

class CatFactLoading extends CatFactState {}

class CatFactLoaded extends CatFactState {
  final Fact fact;
  final Picture picture;

  const CatFactLoaded({required this.fact, required this.picture});

  @override
  List<Object> get props => [fact, picture];
}

class CatFactError extends CatFactState {
  final String errorMessage;

  const CatFactError(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
