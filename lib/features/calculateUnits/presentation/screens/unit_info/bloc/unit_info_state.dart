part of 'unit_info_bloc.dart';

@freezed
class UnitInfoState with _$UnitInfoState {
  const factory UnitInfoState({
    @Default(RequestState.Init) RequestState requestState,
    @Default([]) List<UnitLocationModel> locations,
    @Default([]) List<UnitAreaModel> areas,
    @Default([]) List<UnitFloorModel> floors,
    @Default('') String unitName,
    @Default('duplex') String unitType,
    UnitLocationModel? selectedUnitLocation,
    UnitAreaModel? selectedUnitArea,
    UnitFloorModel? selectedUnitFloor,
    @Default('') String errorMessage,
  }) = _UnitInfoState;
}
