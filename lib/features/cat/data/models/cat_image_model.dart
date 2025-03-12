// data/models/cat_image_model.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_image_model.freezed.dart';
part 'cat_image_model.g.dart';

@freezed
class CatImageModel with _$CatImageModel {
  const factory CatImageModel({
    String? id,
    int? width,
    int? height,
    String? url,
  }) = _CatImageModel;

  factory CatImageModel.fromJson(Map<String, dynamic> json) =>
      _$CatImageModelFromJson(json);
}
