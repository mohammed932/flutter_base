// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitInfoModelImpl _$$UnitInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$UnitInfoModelImpl(
      id: json['id'] as int?,
      unitName: json['unit_name'] as String?,
      unitType: json['unit_type'] as String?,
      unitLocation: json['unit_location'] == null
          ? null
          : UnitLocationModel.fromJson(
              json['unit_location'] as Map<String, dynamic>),
      unitArea: json['unit_area'] == null
          ? null
          : UnitLocationModel.fromJson(
              json['unit_area'] as Map<String, dynamic>),
      unitFloor: json['unit_floor'] == null
          ? null
          : UnitFloorModel.fromJson(json['unit_floor'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UnitInfoModelImplToJson(_$UnitInfoModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unit_name': instance.unitName,
      'unit_type': instance.unitType,
      'unit_location': instance.unitLocation,
      'unit_area': instance.unitArea,
      'unit_floor': instance.unitFloor,
    };
