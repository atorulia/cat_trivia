// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fact _$FactFromJson(Map<String, dynamic> json) => Fact(
      fact: json['fact'] as String,
      creationDate: DateTime.parse(json['creationDate'] as String),
      length: json['length'] as int?,
    );

Map<String, dynamic> _$FactToJson(Fact instance) => <String, dynamic>{
      'fact': instance.fact,
      'creationDate': instance.creationDate.toIso8601String(),
      'length': instance.length,
    };
