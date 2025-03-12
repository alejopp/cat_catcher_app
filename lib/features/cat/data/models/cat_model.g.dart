// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CatModelImpl _$$CatModelImplFromJson(Map<String, dynamic> json) =>
    _$CatModelImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      origin: json['origin'] as String?,
      intelligence: (json['intelligence'] as num?)?.toInt(),
      description: json['description'] as String?,
      temperament: json['temperament'] as String?,
      lifeSpan: json['life_span'] as String?,
      wikipediaUrl: json['wikipedia_url'] as String?,
      image: json['image'] == null
          ? null
          : CatImageModel.fromJson(json['image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CatModelImplToJson(_$CatModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'origin': instance.origin,
      'intelligence': instance.intelligence,
      'description': instance.description,
      'temperament': instance.temperament,
      'life_span': instance.lifeSpan,
      'wikipedia_url': instance.wikipediaUrl,
      'image': instance.image,
    };
