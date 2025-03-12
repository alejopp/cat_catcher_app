import 'package:freezed_annotation/freezed_annotation.dart';

import 'cat_image.dart';

part 'cat.freezed.dart';

@freezed
class Cat with _$Cat {
  const factory Cat({
    required String id,
    required String name,
    required String origin,
    required int intelligence,
    required String description,
    required String temperament,
    required String lifeSpan,
    required String wikipediaUrl,
    required CatImage image,
  }) = _Cat;
}
