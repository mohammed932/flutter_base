// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_floor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitFloorModel _$UnitFloorModelFromJson(Map<String, dynamic> json) {
  return _UnitFloorModel.fromJson(json);
}

/// @nodoc
mixin _$UnitFloorModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitFloorModelCopyWith<UnitFloorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitFloorModelCopyWith<$Res> {
  factory $UnitFloorModelCopyWith(
          UnitFloorModel value, $Res Function(UnitFloorModel) then) =
      _$UnitFloorModelCopyWithImpl<$Res, UnitFloorModel>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$UnitFloorModelCopyWithImpl<$Res, $Val extends UnitFloorModel>
    implements $UnitFloorModelCopyWith<$Res> {
  _$UnitFloorModelCopyWithImpl(this._value, this._then);

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
abstract class _$$UnitFloorModelImplCopyWith<$Res>
    implements $UnitFloorModelCopyWith<$Res> {
  factory _$$UnitFloorModelImplCopyWith(_$UnitFloorModelImpl value,
          $Res Function(_$UnitFloorModelImpl) then) =
      __$$UnitFloorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$UnitFloorModelImplCopyWithImpl<$Res>
    extends _$UnitFloorModelCopyWithImpl<$Res, _$UnitFloorModelImpl>
    implements _$$UnitFloorModelImplCopyWith<$Res> {
  __$$UnitFloorModelImplCopyWithImpl(
      _$UnitFloorModelImpl _value, $Res Function(_$UnitFloorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$UnitFloorModelImpl(
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
class _$UnitFloorModelImpl extends _UnitFloorModel {
  const _$UnitFloorModelImpl({this.id, this.name}) : super._();

  factory _$UnitFloorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitFloorModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'UnitFloorModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitFloorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitFloorModelImplCopyWith<_$UnitFloorModelImpl> get copyWith =>
      __$$UnitFloorModelImplCopyWithImpl<_$UnitFloorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitFloorModelImplToJson(
      this,
    );
  }
}

abstract class _UnitFloorModel extends UnitFloorModel {
  const factory _UnitFloorModel({final int? id, final String? name}) =
      _$UnitFloorModelImpl;
  const _UnitFloorModel._() : super._();

  factory _UnitFloorModel.fromJson(Map<String, dynamic> json) =
      _$UnitFloorModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$UnitFloorModelImplCopyWith<_$UnitFloorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
