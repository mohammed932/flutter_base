// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_area_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitAreaModel _$UnitAreaModelFromJson(Map<String, dynamic> json) {
  return _UnitAreaModel.fromJson(json);
}

/// @nodoc
mixin _$UnitAreaModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitAreaModelCopyWith<UnitAreaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitAreaModelCopyWith<$Res> {
  factory $UnitAreaModelCopyWith(
          UnitAreaModel value, $Res Function(UnitAreaModel) then) =
      _$UnitAreaModelCopyWithImpl<$Res, UnitAreaModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$UnitAreaModelCopyWithImpl<$Res, $Val extends UnitAreaModel>
    implements $UnitAreaModelCopyWith<$Res> {
  _$UnitAreaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitAreaModelImplCopyWith<$Res>
    implements $UnitAreaModelCopyWith<$Res> {
  factory _$$UnitAreaModelImplCopyWith(
          _$UnitAreaModelImpl value, $Res Function(_$UnitAreaModelImpl) then) =
      __$$UnitAreaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$UnitAreaModelImplCopyWithImpl<$Res>
    extends _$UnitAreaModelCopyWithImpl<$Res, _$UnitAreaModelImpl>
    implements _$$UnitAreaModelImplCopyWith<$Res> {
  __$$UnitAreaModelImplCopyWithImpl(
      _$UnitAreaModelImpl _value, $Res Function(_$UnitAreaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UnitAreaModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitAreaModelImpl extends _UnitAreaModel {
  const _$UnitAreaModelImpl({this.id, this.name}) : super._();

  factory _$UnitAreaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitAreaModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'UnitAreaModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitAreaModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitAreaModelImplCopyWith<_$UnitAreaModelImpl> get copyWith =>
      __$$UnitAreaModelImplCopyWithImpl<_$UnitAreaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitAreaModelImplToJson(
      this,
    );
  }
}

abstract class _UnitAreaModel extends UnitAreaModel {
  const factory _UnitAreaModel({final int? id, final String? name}) =
      _$UnitAreaModelImpl;
  const _UnitAreaModel._() : super._();

  factory _UnitAreaModel.fromJson(Map<String, dynamic> json) =
      _$UnitAreaModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$UnitAreaModelImplCopyWith<_$UnitAreaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
