// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'carousel_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarouselModel _$CarouselModelFromJson(Map<String, dynamic> json) {
  return _CarouselModel.fromJson(json);
}

/// @nodoc
mixin _$CarouselModel {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarouselModelCopyWith<CarouselModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarouselModelCopyWith<$Res> {
  factory $CarouselModelCopyWith(
          CarouselModel value, $Res Function(CarouselModel) then) =
      _$CarouselModelCopyWithImpl<$Res, CarouselModel>;
  @useResult
  $Res call({int? id, String? title, String? image, String? type});
}

/// @nodoc
class _$CarouselModelCopyWithImpl<$Res, $Val extends CarouselModel>
    implements $CarouselModelCopyWith<$Res> {
  _$CarouselModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CarouselModelImplCopyWith<$Res>
    implements $CarouselModelCopyWith<$Res> {
  factory _$$CarouselModelImplCopyWith(
          _$CarouselModelImpl value, $Res Function(_$CarouselModelImpl) then) =
      __$$CarouselModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? title, String? image, String? type});
}

/// @nodoc
class __$$CarouselModelImplCopyWithImpl<$Res>
    extends _$CarouselModelCopyWithImpl<$Res, _$CarouselModelImpl>
    implements _$$CarouselModelImplCopyWith<$Res> {
  __$$CarouselModelImplCopyWithImpl(
      _$CarouselModelImpl _value, $Res Function(_$CarouselModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? type = freezed,
  }) {
    return _then(_$CarouselModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CarouselModelImpl extends _CarouselModel {
  const _$CarouselModelImpl({this.id, this.title, this.image, this.type})
      : super._();

  factory _$CarouselModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CarouselModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? type;

  @override
  String toString() {
    return 'CarouselModel(id: $id, title: $title, image: $image, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CarouselModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CarouselModelImplCopyWith<_$CarouselModelImpl> get copyWith =>
      __$$CarouselModelImplCopyWithImpl<_$CarouselModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CarouselModelImplToJson(
      this,
    );
  }
}

abstract class _CarouselModel extends CarouselModel {
  const factory _CarouselModel(
      {final int? id,
      final String? title,
      final String? image,
      final String? type}) = _$CarouselModelImpl;
  const _CarouselModel._() : super._();

  factory _CarouselModel.fromJson(Map<String, dynamic> json) =
      _$CarouselModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$CarouselModelImplCopyWith<_$CarouselModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
