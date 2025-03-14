// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CatImage {
  String get id => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of CatImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatImageCopyWith<CatImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageCopyWith<$Res> {
  factory $CatImageCopyWith(CatImage value, $Res Function(CatImage) then) =
      _$CatImageCopyWithImpl<$Res, CatImage>;
  @useResult
  $Res call({String id, int width, int height, String url});
}

/// @nodoc
class _$CatImageCopyWithImpl<$Res, $Val extends CatImage>
    implements $CatImageCopyWith<$Res> {
  _$CatImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CatImageImplCopyWith<$Res>
    implements $CatImageCopyWith<$Res> {
  factory _$$CatImageImplCopyWith(
          _$CatImageImpl value, $Res Function(_$CatImageImpl) then) =
      __$$CatImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, int width, int height, String url});
}

/// @nodoc
class __$$CatImageImplCopyWithImpl<$Res>
    extends _$CatImageCopyWithImpl<$Res, _$CatImageImpl>
    implements _$$CatImageImplCopyWith<$Res> {
  __$$CatImageImplCopyWithImpl(
      _$CatImageImpl _value, $Res Function(_$CatImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? width = null,
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_$CatImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CatImageImpl implements _CatImage {
  const _$CatImageImpl(
      {required this.id,
      required this.width,
      required this.height,
      required this.url});

  @override
  final String id;
  @override
  final int width;
  @override
  final int height;
  @override
  final String url;

  @override
  String toString() {
    return 'CatImage(id: $id, width: $width, height: $height, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, width, height, url);

  /// Create a copy of CatImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatImageImplCopyWith<_$CatImageImpl> get copyWith =>
      __$$CatImageImplCopyWithImpl<_$CatImageImpl>(this, _$identity);
}

abstract class _CatImage implements CatImage {
  const factory _CatImage(
      {required final String id,
      required final int width,
      required final int height,
      required final String url}) = _$CatImageImpl;

  @override
  String get id;
  @override
  int get width;
  @override
  int get height;
  @override
  String get url;

  /// Create a copy of CatImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatImageImplCopyWith<_$CatImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
