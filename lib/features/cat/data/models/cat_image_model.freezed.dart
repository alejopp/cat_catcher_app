// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatImageModel _$CatImageModelFromJson(Map<String, dynamic> json) {
  return _CatImageModel.fromJson(json);
}

/// @nodoc
mixin _$CatImageModel {
  String? get id => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this CatImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatImageModelCopyWith<CatImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageModelCopyWith<$Res> {
  factory $CatImageModelCopyWith(
          CatImageModel value, $Res Function(CatImageModel) then) =
      _$CatImageModelCopyWithImpl<$Res, CatImageModel>;
  @useResult
  $Res call({String? id, int? width, int? height, String? url});
}

/// @nodoc
class _$CatImageModelCopyWithImpl<$Res, $Val extends CatImageModel>
    implements $CatImageModelCopyWith<$Res> {
  _$CatImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatImageModelImplCopyWith<$Res>
    implements $CatImageModelCopyWith<$Res> {
  factory _$$CatImageModelImplCopyWith(
          _$CatImageModelImpl value, $Res Function(_$CatImageModelImpl) then) =
      __$$CatImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, int? width, int? height, String? url});
}

/// @nodoc
class __$$CatImageModelImplCopyWithImpl<$Res>
    extends _$CatImageModelCopyWithImpl<$Res, _$CatImageModelImpl>
    implements _$$CatImageModelImplCopyWith<$Res> {
  __$$CatImageModelImplCopyWithImpl(
      _$CatImageModelImpl _value, $Res Function(_$CatImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? url = freezed,
  }) {
    return _then(_$CatImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatImageModelImpl implements _CatImageModel {
  const _$CatImageModelImpl({this.id, this.width, this.height, this.url});

  factory _$CatImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatImageModelImplFromJson(json);

  @override
  final String? id;
  @override
  final int? width;
  @override
  final int? height;
  @override
  final String? url;

  @override
  String toString() {
    return 'CatImageModel(id: $id, width: $width, height: $height, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, width, height, url);

  /// Create a copy of CatImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatImageModelImplCopyWith<_$CatImageModelImpl> get copyWith =>
      __$$CatImageModelImplCopyWithImpl<_$CatImageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatImageModelImplToJson(
      this,
    );
  }
}

abstract class _CatImageModel implements CatImageModel {
  const factory _CatImageModel(
      {final String? id,
      final int? width,
      final int? height,
      final String? url}) = _$CatImageModelImpl;

  factory _CatImageModel.fromJson(Map<String, dynamic> json) =
      _$CatImageModelImpl.fromJson;

  @override
  String? get id;
  @override
  int? get width;
  @override
  int? get height;
  @override
  String? get url;

  /// Create a copy of CatImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatImageModelImplCopyWith<_$CatImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
