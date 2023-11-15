// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitLocationModel _$UnitLocationModelFromJson(Map<String, dynamic> json) {
  return _UnitLocationModel.fromJson(json);
}

/// @nodoc
mixin _$UnitLocationModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitLocationModelCopyWith<UnitLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitLocationModelCopyWith<$Res> {
  factory $UnitLocationModelCopyWith(
          UnitLocationModel value, $Res Function(UnitLocationModel) then) =
      _$UnitLocationModelCopyWithImpl<$Res, UnitLocationModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$UnitLocationModelCopyWithImpl<$Res, $Val extends UnitLocationModel>
    implements $UnitLocationModelCopyWith<$Res> {
  _$UnitLocationModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UnitLocationModelImplCopyWith<$Res>
    implements $UnitLocationModelCopyWith<$Res> {
  factory _$$UnitLocationModelImplCopyWith(_$UnitLocationModelImpl value,
          $Res Function(_$UnitLocationModelImpl) then) =
      __$$UnitLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$UnitLocationModelImplCopyWithImpl<$Res>
    extends _$UnitLocationModelCopyWithImpl<$Res, _$UnitLocationModelImpl>
    implements _$$UnitLocationModelImplCopyWith<$Res> {
  __$$UnitLocationModelImplCopyWithImpl(_$UnitLocationModelImpl _value,
      $Res Function(_$UnitLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UnitLocationModelImpl(
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
class _$UnitLocationModelImpl extends _UnitLocationModel {
  const _$UnitLocationModelImpl({this.id, this.name}) : super._();

  factory _$UnitLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitLocationModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'UnitLocationModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitLocationModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitLocationModelImplCopyWith<_$UnitLocationModelImpl> get copyWith =>
      __$$UnitLocationModelImplCopyWithImpl<_$UnitLocationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitLocationModelImplToJson(
      this,
    );
  }
}

abstract class _UnitLocationModel extends UnitLocationModel {
  const factory _UnitLocationModel({final int? id, final String? name}) =
      _$UnitLocationModelImpl;
  const _UnitLocationModel._() : super._();

  factory _UnitLocationModel.fromJson(Map<String, dynamic> json) =
      _$UnitLocationModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$UnitLocationModelImplCopyWith<_$UnitLocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
