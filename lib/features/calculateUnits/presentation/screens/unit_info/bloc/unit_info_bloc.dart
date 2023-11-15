import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';

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
  UnitInfoBloc({required this.getUnitLocationList}) : super(UnitInfoState()) {
    on<UnitInfoEvent>((event, emit) async {
      emit(state.copyWith(
        requestState: RequestState.LOADING,
        errorMessage: '',
      ));
      Either<Failure, List<UnitLocationModel>> response =
          await getUnitLocationList(NoParams());

      response.fold((error) {
        // emit(state.copyWith(
        //   errorMessage: error.message,
        //   loading: RequestState.ERROR,
        // ));
      }, (locations) {
        // emit(state.copyWith(
        //   loggedIn: products,
        //   loading: RequestState.LOADED,
        // ));
      });
    });
  }
  Future getUnitLocations() async {}
}
