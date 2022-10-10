// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fact.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FactAdapter extends TypeAdapter<Fact> {
  @override
  final int typeId = 0;

  @override
  Fact read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Fact(
      fact: fields[0] as String,
      creationDate: fields[1] as DateTime,
      length: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Fact obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.fact)
      ..writeByte(1)
      ..write(obj.creationDate)
      ..writeByte(2)
      ..write(obj.length);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FactAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
