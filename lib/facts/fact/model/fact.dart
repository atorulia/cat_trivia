import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable()
class Fact extends Equatable {
  final String fact;
  final int? length;

  const Fact({required this.fact, this.length});

  /// Connect the generated [_$FactFromJson] function to the `fromJson`
  /// factory.
  factory Fact.fromJson(Map<String, dynamic> json) => _$FactFromJson(json);

  /// Connect the generated [_$FactToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FactToJson(this);

  @override
  List<Object?> get props => [fact, length];
}
