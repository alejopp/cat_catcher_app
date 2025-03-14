import 'package:freezed_annotation/freezed_annotation.dart';

import 'cat_image_model.dart';

part 'cat_model.freezed.dart';
part 'cat_model.g.dart';

@freezed
class CatModel with _$CatModel {
  const factory CatModel({
    String? id,
    String? name,
    String? origin,
    String? description,
    String? temperament,
    @JsonKey(name: 'country_code') String? countryCode,
    int? intelligence,
    int? adaptability,
    @JsonKey(name: 'child_friendly') int? childFriendly,
    @JsonKey(name: 'social_needs') int? socialNeeds,
    @JsonKey(name: 'dog_friendly') int? dogFriendly,
    @JsonKey(name: 'life_span') String? lifeSpan,
    @JsonKey(name: 'wikipedia_url') String? wikipediaUrl,
    CatImageModel? image,
  }) = _CatModel;

  factory CatModel.fromJson(Map<String, dynamic> json) =>
      _$CatModelFromJson(json);
}
