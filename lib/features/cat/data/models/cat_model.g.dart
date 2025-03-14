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
      description: json['description'] as String?,
      temperament: json['temperament'] as String?,
      countryCode: json['country_code'] as String?,
      intelligence: (json['intelligence'] as num?)?.toInt(),
      adaptability: (json['adaptability'] as num?)?.toInt(),
      childFriendly: (json['child_friendly'] as num?)?.toInt(),
      socialNeeds: (json['social_needs'] as num?)?.toInt(),
      dogFriendly: (json['dog_friendly'] as num?)?.toInt(),
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
      'description': instance.description,
      'temperament': instance.temperament,
      'country_code': instance.countryCode,
      'intelligence': instance.intelligence,
      'adaptability': instance.adaptability,
      'child_friendly': instance.childFriendly,
      'social_needs': instance.socialNeeds,
      'dog_friendly': instance.dogFriendly,
      'life_span': instance.lifeSpan,
      'wikipedia_url': instance.wikipediaUrl,
      'image': instance.image,
    };
