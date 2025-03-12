// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatImageModelImpl _$$CatImageModelImplFromJson(Map<String, dynamic> json) =>
    _$CatImageModelImpl(
      id: json['id'] as String?,
      width: (json['width'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$CatImageModelImplToJson(_$CatImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };
