import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fact.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class Fact extends Equatable {
  @HiveField(0)
  final String fact;
  @HiveField(1)
  final DateTime creationDate;
  @HiveField(2)
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
