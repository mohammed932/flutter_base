part of 'unit_info_bloc.dart';

@freezed
class UnitInfoState with _$UnitInfoState {
  const factory UnitInfoState({
    @Default(RequestState.Init) RequestState requestState,
    String? roomName,
    @Default('') String errorMessage,
  }) = _UnitInfoState;
}
