import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable()
class Fact extends Equatable {
  final String fact;
  final DateTime creationDate;
  final int? length;

  const Fact({required this.fact, required this.creationDate, this.length});

  /// Connect the generated [_$FactFromJson] function to the `fromJson`
  /// factory.
  factory Fact.fromJson(Map<String, dynamic> json) {
    json['creationDate'] = DateTime.now().toString();

    debugPrint(json.toString());

    return _$FactFromJson(json);
  }

  /// Connect the generated [_$FactToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$FactToJson(this);

  @override
  List<Object?> get props => [fact, length];
}
