import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_floor_model.freezed.dart';
part 'unit_floor_model.g.dart';

@JsonSerializable()
@freezed
class UnitFloorModel with _$UnitFloorModel {
  const UnitFloorModel._(); // private constructor for the freezed union

  const factory UnitFloorModel({
    int? id,
    String? name,
  }) = _UnitFloorModel;

  factory UnitFloorModel.fromJson(Map<String, dynamic> json) =>
      _$UnitFloorModelFromJson(json);
}
