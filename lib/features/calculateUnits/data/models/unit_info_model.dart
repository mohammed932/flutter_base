import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';

part 'unit_info_model.freezed.dart';
part 'unit_info_model.g.dart';

@JsonSerializable()
@freezed
class UnitInfoModel with _$UnitInfoModel {
  const UnitInfoModel._(); // private constructor for the freezed union

  const factory UnitInfoModel({
    int? id,
    @JsonKey(name: 'unit_name') String? unitName,
    @JsonKey(name: 'unit_type') String? unitType,
    @JsonKey(name: 'unit_location') UnitLocationModel? unitLocation,
    @JsonKey(name: 'unit_area') UnitLocationModel? unitArea,
    @JsonKey(name: 'unit_floor') UnitFloorModel? unitFloor,
  }) = _UnitInfoModel;

  factory UnitInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UnitInfoModelFromJson(json);
}
