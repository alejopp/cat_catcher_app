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
    int? intelligence,
    String? description,
    String? temperament,
    @JsonKey(name: 'life_span') String? lifeSpan,
    @JsonKey(name: 'wikipedia_url') String? wikipediaUrl,
    CatImageModel? image,
  }) = _CatModel;

  factory CatModel.fromJson(Map<String, dynamic> json) =>
      _$CatModelFromJson(json);
}
