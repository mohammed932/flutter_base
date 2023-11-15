// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UnitInfoModel _$UnitInfoModelFromJson(Map<String, dynamic> json) {
  return _UnitInfoModel.fromJson(json);
}

/// @nodoc
mixin _$UnitInfoModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_name')
  String? get unitName => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_type')
  String? get unitType => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_location')
  UnitLocationModel? get unitLocation => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_area')
  UnitLocationModel? get unitArea => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_floor')
  UnitFloorModel? get unitFloor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitInfoModelCopyWith<UnitInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitInfoModelCopyWith<$Res> {
  factory $UnitInfoModelCopyWith(
          UnitInfoModel value, $Res Function(UnitInfoModel) then) =
      _$UnitInfoModelCopyWithImpl<$Res, UnitInfoModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'unit_name') String? unitName,
      @JsonKey(name: 'unit_type') String? unitType,
      @JsonKey(name: 'unit_location') UnitLocationModel? unitLocation,
      @JsonKey(name: 'unit_area') UnitLocationModel? unitArea,
      @JsonKey(name: 'unit_floor') UnitFloorModel? unitFloor});

  $UnitLocationModelCopyWith<$Res>? get unitLocation;
  $UnitLocationModelCopyWith<$Res>? get unitArea;
  $UnitFloorModelCopyWith<$Res>? get unitFloor;
}

/// @nodoc
class _$UnitInfoModelCopyWithImpl<$Res, $Val extends UnitInfoModel>
    implements $UnitInfoModelCopyWith<$Res> {
  _$UnitInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unitName = freezed,
    Object? unitType = freezed,
    Object? unitLocation = freezed,
    Object? unitArea = freezed,
    Object? unitFloor = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      unitLocation: freezed == unitLocation
          ? _value.unitLocation
          : unitLocation // ignore: cast_nullable_to_non_nullable
              as UnitLocationModel?,
      unitArea: freezed == unitArea
          ? _value.unitArea
          : unitArea // ignore: cast_nullable_to_non_nullable
              as UnitLocationModel?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as UnitFloorModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitLocationModelCopyWith<$Res>? get unitLocation {
    if (_value.unitLocation == null) {
      return null;
    }

    return $UnitLocationModelCopyWith<$Res>(_value.unitLocation!, (value) {
      return _then(_value.copyWith(unitLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitLocationModelCopyWith<$Res>? get unitArea {
    if (_value.unitArea == null) {
      return null;
    }

    return $UnitLocationModelCopyWith<$Res>(_value.unitArea!, (value) {
      return _then(_value.copyWith(unitArea: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UnitFloorModelCopyWith<$Res>? get unitFloor {
    if (_value.unitFloor == null) {
      return null;
    }

    return $UnitFloorModelCopyWith<$Res>(_value.unitFloor!, (value) {
      return _then(_value.copyWith(unitFloor: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnitInfoModelImplCopyWith<$Res>
    implements $UnitInfoModelCopyWith<$Res> {
  factory _$$UnitInfoModelImplCopyWith(
          _$UnitInfoModelImpl value, $Res Function(_$UnitInfoModelImpl) then) =
      __$$UnitInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'unit_name') String? unitName,
      @JsonKey(name: 'unit_type') String? unitType,
      @JsonKey(name: 'unit_location') UnitLocationModel? unitLocation,
      @JsonKey(name: 'unit_area') UnitLocationModel? unitArea,
      @JsonKey(name: 'unit_floor') UnitFloorModel? unitFloor});

  @override
  $UnitLocationModelCopyWith<$Res>? get unitLocation;
  @override
  $UnitLocationModelCopyWith<$Res>? get unitArea;
  @override
  $UnitFloorModelCopyWith<$Res>? get unitFloor;
}

/// @nodoc
class __$$UnitInfoModelImplCopyWithImpl<$Res>
    extends _$UnitInfoModelCopyWithImpl<$Res, _$UnitInfoModelImpl>
    implements _$$UnitInfoModelImplCopyWith<$Res> {
  __$$UnitInfoModelImplCopyWithImpl(
      _$UnitInfoModelImpl _value, $Res Function(_$UnitInfoModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? unitName = freezed,
    Object? unitType = freezed,
    Object? unitLocation = freezed,
    Object? unitArea = freezed,
    Object? unitFloor = freezed,
  }) {
    return _then(_$UnitInfoModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      unitName: freezed == unitName
          ? _value.unitName
          : unitName // ignore: cast_nullable_to_non_nullable
              as String?,
      unitType: freezed == unitType
          ? _value.unitType
          : unitType // ignore: cast_nullable_to_non_nullable
              as String?,
      unitLocation: freezed == unitLocation
          ? _value.unitLocation
          : unitLocation // ignore: cast_nullable_to_non_nullable
              as UnitLocationModel?,
      unitArea: freezed == unitArea
          ? _value.unitArea
          : unitArea // ignore: cast_nullable_to_non_nullable
              as UnitLocationModel?,
      unitFloor: freezed == unitFloor
          ? _value.unitFloor
          : unitFloor // ignore: cast_nullable_to_non_nullable
              as UnitFloorModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitInfoModelImpl extends _UnitInfoModel {
  const _$UnitInfoModelImpl(
      {this.id,
      @JsonKey(name: 'unit_name') this.unitName,
      @JsonKey(name: 'unit_type') this.unitType,
      @JsonKey(name: 'unit_location') this.unitLocation,
      @JsonKey(name: 'unit_area') this.unitArea,
      @JsonKey(name: 'unit_floor') this.unitFloor})
      : super._();

  factory _$UnitInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitInfoModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'unit_name')
  final String? unitName;
  @override
  @JsonKey(name: 'unit_type')
  final String? unitType;
  @override
  @JsonKey(name: 'unit_location')
  final UnitLocationModel? unitLocation;
  @override
  @JsonKey(name: 'unit_area')
  final UnitLocationModel? unitArea;
  @override
  @JsonKey(name: 'unit_floor')
  final UnitFloorModel? unitFloor;

  @override
  String toString() {
    return 'UnitInfoModel(id: $id, unitName: $unitName, unitType: $unitType, unitLocation: $unitLocation, unitArea: $unitArea, unitFloor: $unitFloor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitInfoModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.unitName, unitName) ||
                other.unitName == unitName) &&
            (identical(other.unitType, unitType) ||
                other.unitType == unitType) &&
            (identical(other.unitLocation, unitLocation) ||
                other.unitLocation == unitLocation) &&
            (identical(other.unitArea, unitArea) ||
                other.unitArea == unitArea) &&
            (identical(other.unitFloor, unitFloor) ||
                other.unitFloor == unitFloor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, unitName, unitType, unitLocation, unitArea, unitFloor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitInfoModelImplCopyWith<_$UnitInfoModelImpl> get copyWith =>
      __$$UnitInfoModelImplCopyWithImpl<_$UnitInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitInfoModelImplToJson(
      this,
    );
  }
}

abstract class _UnitInfoModel extends UnitInfoModel {
  const factory _UnitInfoModel(
          {final int? id,
          @JsonKey(name: 'unit_name') final String? unitName,
          @JsonKey(name: 'unit_type') final String? unitType,
          @JsonKey(name: 'unit_location') final UnitLocationModel? unitLocation,
          @JsonKey(name: 'unit_area') final UnitLocationModel? unitArea,
          @JsonKey(name: 'unit_floor') final UnitFloorModel? unitFloor}) =
      _$UnitInfoModelImpl;
  const _UnitInfoModel._() : super._();

  factory _UnitInfoModel.fromJson(Map<String, dynamic> json) =
      _$UnitInfoModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'unit_name')
  String? get unitName;
  @override
  @JsonKey(name: 'unit_type')
  String? get unitType;
  @override
  @JsonKey(name: 'unit_location')
  UnitLocationModel? get unitLocation;
  @override
  @JsonKey(name: 'unit_area')
  UnitLocationModel? get unitArea;
  @override
  @JsonKey(name: 'unit_floor')
  UnitFloorModel? get unitFloor;
  @override
  @JsonKey(ignore: true)
  _$$UnitInfoModelImplCopyWith<_$UnitInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
