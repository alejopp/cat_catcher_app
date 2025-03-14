import 'package:freezed_annotation/freezed_annotation.dart';

import 'cat_image.dart';

part 'cat.freezed.dart';

@freezed
class Cat with _$Cat {
  const factory Cat({
    required String id,
    required String name,
    required String origin,
    required String temperament,
    required String description,
    required String lifeSpan,
    required String wikipediaUrl,
    required String countryCode,
    required int intelligence,
    required int adaptability,
    required int childFriendly,
    required int socialNeeds,
    required int dogFriendly,
    CatImage? image,
  }) = _Cat;
}
