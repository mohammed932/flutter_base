part of 'unit_info_bloc.dart';

@freezed
class UnitInfoEvent with _$UnitInfoEvent {
  const factory UnitInfoEvent.started() = _Started;
  const factory UnitInfoEvent.selectUnitName(String unitname) = _SelectUnitName;
  const factory UnitInfoEvent.selectUnitLcoation(
      UnitLocationModel unitLocationModel) = _SelectUnitLcoation;
  const factory UnitInfoEvent.selectUnitType(String unittType) =
      _SelectUnitType;
  const factory UnitInfoEvent.selectUnitArea(UnitAreaModel unitLocationModel) =
      _SelectUnitArea;
  const factory UnitInfoEvent.storeUnitInfo() = _StoreUnitInfo;
}
