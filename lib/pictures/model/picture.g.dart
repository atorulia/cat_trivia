// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'picture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      id: json['id'] as String,
      url: json['url'] as String,
      width: (json['width'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
    };
