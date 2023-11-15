import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_location_model.freezed.dart';
part 'unit_location_model.g.dart';

@JsonSerializable()
@freezed
class UnitLocationModel with _$UnitLocationModel {
  const UnitLocationModel._(); // private constructor for the freezed union

  const factory UnitLocationModel({
    int? id,
    String? name,
  }) = _UnitLocationModel;

  factory UnitLocationModel.fromJson(Map<String, dynamic> json) =>
      _$UnitLocationModelFromJson(json);
}
