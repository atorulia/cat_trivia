import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'picture.g.dart';

@JsonSerializable()
class Picture extends Equatable {
  final String id;
  final String url;
  final double? width;
  final double? height;

  const Picture({required this.id, required this.url, this.width, this.height});

  /// Connect the generated [_$PictureFromJson] function to the `fromJson`
  /// factory.
  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);

  /// Connect the generated [_$PictureToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$PictureToJson(this);

  @override
  List<Object?> get props => [id, url, width, height];
}
