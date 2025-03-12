import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_image.freezed.dart';

@freezed
class CatImage with _$CatImage {
  const factory CatImage({
    required String id,
    required int width,
    required int height,
    required String url,
  }) = _CatImage;
}
