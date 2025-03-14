// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CatModel _$CatModelFromJson(Map<String, dynamic> json) {
  return _CatModel.fromJson(json);
}

/// @nodoc
mixin _$CatModel {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get origin => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get temperament => throw _privateConstructorUsedError;
  @JsonKey(name: 'country_code')
  String? get countryCode => throw _privateConstructorUsedError;
  int? get intelligence => throw _privateConstructorUsedError;
  int? get adaptability => throw _privateConstructorUsedError;
  @JsonKey(name: 'child_friendly')
  int? get childFriendly => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_needs')
  int? get socialNeeds => throw _privateConstructorUsedError;
  @JsonKey(name: 'dog_friendly')
  int? get dogFriendly => throw _privateConstructorUsedError;
  @JsonKey(name: 'life_span')
  String? get lifeSpan => throw _privateConstructorUsedError;
  @JsonKey(name: 'wikipedia_url')
  String? get wikipediaUrl => throw _privateConstructorUsedError;
  CatImageModel? get image => throw _privateConstructorUsedError;

  /// Serializes this CatModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CatModelCopyWith<CatModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatModelCopyWith<$Res> {
  factory $CatModelCopyWith(CatModel value, $Res Function(CatModel) then) =
      _$CatModelCopyWithImpl<$Res, CatModel>;
  @useResult
  $Res call(
      {String? id,
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
      CatImageModel? image});

  $CatImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class _$CatModelCopyWithImpl<$Res, $Val extends CatModel>
    implements $CatModelCopyWith<$Res> {
  _$CatModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? origin = freezed,
    Object? description = freezed,
    Object? temperament = freezed,
    Object? countryCode = freezed,
    Object? intelligence = freezed,
    Object? adaptability = freezed,
    Object? childFriendly = freezed,
    Object? socialNeeds = freezed,
    Object? dogFriendly = freezed,
    Object? lifeSpan = freezed,
    Object? wikipediaUrl = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      temperament: freezed == temperament
          ? _value.temperament
          : temperament // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      intelligence: freezed == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int?,
      adaptability: freezed == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int?,
      childFriendly: freezed == childFriendly
          ? _value.childFriendly
          : childFriendly // ignore: cast_nullable_to_non_nullable
              as int?,
      socialNeeds: freezed == socialNeeds
          ? _value.socialNeeds
          : socialNeeds // ignore: cast_nullable_to_non_nullable
              as int?,
      dogFriendly: freezed == dogFriendly
          ? _value.dogFriendly
          : dogFriendly // ignore: cast_nullable_to_non_nullable
              as int?,
      lifeSpan: freezed == lifeSpan
          ? _value.lifeSpan
          : lifeSpan // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipediaUrl: freezed == wikipediaUrl
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as CatImageModel?,
    ) as $Val);
  }

  /// Create a copy of CatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CatImageModelCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $CatImageModelCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CatModelImplCopyWith<$Res>
    implements $CatModelCopyWith<$Res> {
  factory _$$CatModelImplCopyWith(
          _$CatModelImpl value, $Res Function(_$CatModelImpl) then) =
      __$$CatModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      CatImageModel? image});

  @override
  $CatImageModelCopyWith<$Res>? get image;
}

/// @nodoc
class __$$CatModelImplCopyWithImpl<$Res>
    extends _$CatModelCopyWithImpl<$Res, _$CatModelImpl>
    implements _$$CatModelImplCopyWith<$Res> {
  __$$CatModelImplCopyWithImpl(
      _$CatModelImpl _value, $Res Function(_$CatModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CatModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? origin = freezed,
    Object? description = freezed,
    Object? temperament = freezed,
    Object? countryCode = freezed,
    Object? intelligence = freezed,
    Object? adaptability = freezed,
    Object? childFriendly = freezed,
    Object? socialNeeds = freezed,
    Object? dogFriendly = freezed,
    Object? lifeSpan = freezed,
    Object? wikipediaUrl = freezed,
    Object? image = freezed,
  }) {
    return _then(_$CatModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      origin: freezed == origin
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      temperament: freezed == temperament
          ? _value.temperament
          : temperament // ignore: cast_nullable_to_non_nullable
              as String?,
      countryCode: freezed == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String?,
      intelligence: freezed == intelligence
          ? _value.intelligence
          : intelligence // ignore: cast_nullable_to_non_nullable
              as int?,
      adaptability: freezed == adaptability
          ? _value.adaptability
          : adaptability // ignore: cast_nullable_to_non_nullable
              as int?,
      childFriendly: freezed == childFriendly
          ? _value.childFriendly
          : childFriendly // ignore: cast_nullable_to_non_nullable
              as int?,
      socialNeeds: freezed == socialNeeds
          ? _value.socialNeeds
          : socialNeeds // ignore: cast_nullable_to_non_nullable
              as int?,
      dogFriendly: freezed == dogFriendly
          ? _value.dogFriendly
          : dogFriendly // ignore: cast_nullable_to_non_nullable
              as int?,
      lifeSpan: freezed == lifeSpan
          ? _value.lifeSpan
          : lifeSpan // ignore: cast_nullable_to_non_nullable
              as String?,
      wikipediaUrl: freezed == wikipediaUrl
          ? _value.wikipediaUrl
          : wikipediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as CatImageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CatModelImpl implements _CatModel {
  const _$CatModelImpl(
      {this.id,
      this.name,
      this.origin,
      this.description,
      this.temperament,
      @JsonKey(name: 'country_code') this.countryCode,
      this.intelligence,
      this.adaptability,
      @JsonKey(name: 'child_friendly') this.childFriendly,
      @JsonKey(name: 'social_needs') this.socialNeeds,
      @JsonKey(name: 'dog_friendly') this.dogFriendly,
      @JsonKey(name: 'life_span') this.lifeSpan,
      @JsonKey(name: 'wikipedia_url') this.wikipediaUrl,
      this.image});

  factory _$CatModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CatModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? origin;
  @override
  final String? description;
  @override
  final String? temperament;
  @override
  @JsonKey(name: 'country_code')
  final String? countryCode;
  @override
  final int? intelligence;
  @override
  final int? adaptability;
  @override
  @JsonKey(name: 'child_friendly')
  final int? childFriendly;
  @override
  @JsonKey(name: 'social_needs')
  final int? socialNeeds;
  @override
  @JsonKey(name: 'dog_friendly')
  final int? dogFriendly;
  @override
  @JsonKey(name: 'life_span')
  final String? lifeSpan;
  @override
  @JsonKey(name: 'wikipedia_url')
  final String? wikipediaUrl;
  @override
  final CatImageModel? image;

  @override
  String toString() {
    return 'CatModel(id: $id, name: $name, origin: $origin, description: $description, temperament: $temperament, countryCode: $countryCode, intelligence: $intelligence, adaptability: $adaptability, childFriendly: $childFriendly, socialNeeds: $socialNeeds, dogFriendly: $dogFriendly, lifeSpan: $lifeSpan, wikipediaUrl: $wikipediaUrl, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CatModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.origin, origin) || other.origin == origin) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.temperament, temperament) ||
                other.temperament == temperament) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.intelligence, intelligence) ||
                other.intelligence == intelligence) &&
            (identical(other.adaptability, adaptability) ||
                other.adaptability == adaptability) &&
            (identical(other.childFriendly, childFriendly) ||
                other.childFriendly == childFriendly) &&
            (identical(other.socialNeeds, socialNeeds) ||
                other.socialNeeds == socialNeeds) &&
            (identical(other.dogFriendly, dogFriendly) ||
                other.dogFriendly == dogFriendly) &&
            (identical(other.lifeSpan, lifeSpan) ||
                other.lifeSpan == lifeSpan) &&
            (identical(other.wikipediaUrl, wikipediaUrl) ||
                other.wikipediaUrl == wikipediaUrl) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      origin,
      description,
      temperament,
      countryCode,
      intelligence,
      adaptability,
      childFriendly,
      socialNeeds,
      dogFriendly,
      lifeSpan,
      wikipediaUrl,
      image);

  /// Create a copy of CatModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CatModelImplCopyWith<_$CatModelImpl> get copyWith =>
      __$$CatModelImplCopyWithImpl<_$CatModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CatModelImplToJson(
      this,
    );
  }
}

abstract class _CatModel implements CatModel {
  const factory _CatModel(
      {final String? id,
      final String? name,
      final String? origin,
      final String? description,
      final String? temperament,
      @JsonKey(name: 'country_code') final String? countryCode,
      final int? intelligence,
      final int? adaptability,
      @JsonKey(name: 'child_friendly') final int? childFriendly,
      @JsonKey(name: 'social_needs') final int? socialNeeds,
      @JsonKey(name: 'dog_friendly') final int? dogFriendly,
      @JsonKey(name: 'life_span') final String? lifeSpan,
      @JsonKey(name: 'wikipedia_url') final String? wikipediaUrl,
      final CatImageModel? image}) = _$CatModelImpl;

  factory _CatModel.fromJson(Map<String, dynamic> json) =
      _$CatModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get origin;
  @override
  String? get description;
  @override
  String? get temperament;
  @override
  @JsonKey(name: 'country_code')
  String? get countryCode;
  @override
  int? get intelligence;
  @override
  int? get adaptability;
  @override
  @JsonKey(name: 'child_friendly')
  int? get childFriendly;
  @override
  @JsonKey(name: 'social_needs')
  int? get socialNeeds;
  @override
  @JsonKey(name: 'dog_friendly')
  int? get dogFriendly;
  @override
  @JsonKey(name: 'life_span')
  String? get lifeSpan;
  @override
  @JsonKey(name: 'wikipedia_url')
  String? get wikipediaUrl;
  @override
  CatImageModel? get image;

  /// Create a copy of CatModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CatModelImplCopyWith<_$CatModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
