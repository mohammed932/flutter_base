import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_area_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_info_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';
import 'package:interview_test/features/calculateUnits/domin/usecases/store_unit_info_usecase.dart';

import '../../../../../../core/constants/enums.dart';
import '../../../../../../core/errors/failure.dart';

part 'unit_info_bloc.freezed.dart';
part 'unit_info_event.dart';
part 'unit_info_state.dart';

abstract class IUnitInfoBloc extends Bloc<UnitInfoEvent, UnitInfoState> {
  IUnitInfoBloc(super.initialState);
}

class UnitInfoBloc extends IUnitInfoBloc {
  final BaseUseCase<List<UnitLocationModel>, NoParams> getUnitLocationList;
  final BaseUseCase<List<UnitAreaModel>, NoParams> getUnitArealist;
  final BaseUseCase<List<UnitFloorModel>, NoParams> getUnitFloorlist;
  final BaseUseCase<UnitInfoModel, StoreUnitInfoParams> storeUnitInfo;

  UnitInfoBloc({
    required this.getUnitLocationList,
    required this.getUnitArealist,
    required this.getUnitFloorlist,
    required this.storeUnitInfo,
  }) : super(UnitInfoState()) {
    on<UnitInfoEvent>((event, emit) async {
      if (event is _Started) {
        await getUnitLocations();
        await getUnitAreas();
        await getUnitFloors();
        log("state ${state}");
      }
      if (event is _SelectUnitLcoation) {
        selectUnitLocation(event.unitLocationModel);
      }
      if (event is _SelectUnitType) {
        emit(state.copyWith(unitType: event.unittType));
      }
      if (event is _SelectUnitName) {
        emit(state.copyWith(unitName: event.unitname));
      }
      if (event is _StoreUnitInfo) {
        storeUnitInfo(StoreUnitInfoParams(
          unitName: state.unitName,
          unitType: state.unitType,
          unitAreaId: state.selectedUnitArea!.id!,
          unitFloorId: state.selectedUnitFloor!.id!,
          unitLocationId: state.selectedUnitLocation!.id!,
        ));
      }
    });
  }
  selectUnitLocation(UnitLocationModel unitLocationModel) {
    emit(state.copyWith(selectedUnitLocation: unitLocationModel));
  }

  Future getUnitLocations() async {
    emit(state.copyWith(
      requestState: RequestState.LOADING,
      errorMessage: '',
    ));
    Either<Failure, List<UnitLocationModel>> response =
        await getUnitLocationList(NoParams());

    response.fold((error) {
      emit(state.copyWith(
        errorMessage: error.message,
        requestState: RequestState.ERROR,
      ));
    }, (locations) {
      emit(state.copyWith(
        locations: locations,
        requestState: RequestState.LOADED,
      ));
    });
  }

  Future getUnitAreas() async {
    emit(state.copyWith(
      requestState: RequestState.LOADING,
      errorMessage: '',
    ));
    Either<Failure, List<UnitAreaModel>> response =
        await getUnitArealist(NoParams());

    response.fold((error) {
      emit(state.copyWith(
        errorMessage: error.message,
        requestState: RequestState.ERROR,
      ));
    }, (areas) {
      emit(state.copyWith(
        areas: areas,
        requestState: RequestState.LOADED,
      ));
    });
  }

  Future getUnitFloors() async {
    emit(state.copyWith(
      requestState: RequestState.LOADING,
      errorMessage: '',
    ));
    Either<Failure, List<UnitFloorModel>> response =
        await getUnitFloorlist(NoParams());

    response.fold((error) {
      emit(state.copyWith(
        errorMessage: error.message,
        requestState: RequestState.ERROR,
      ));
    }, (floors) {
      emit(state.copyWith(
        floors: floors,
        requestState: RequestState.LOADED,
      ));
    });
  }



}
