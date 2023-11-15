import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_area_model.freezed.dart';
part 'unit_area_model.g.dart';

@JsonSerializable()
@freezed
class UnitAreaModel with _$UnitAreaModel {
  const UnitAreaModel._(); // private constructor for the freezed union

  const factory UnitAreaModel({
    int? id,
    String? name,
  }) = _UnitAreaModel;

  factory UnitAreaModel.fromJson(Map<String, dynamic> json) =>
      _$UnitAreaModelFromJson(json);
}
