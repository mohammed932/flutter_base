import 'package:dartz/dartz.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_area_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_info_model.dart';
import 'package:interview_test/features/calculateUnits/presentation/screens/unit_info/bloc/unit_info_bloc.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/unit_location_model.dart';
import '../repositories/base_calculate_units_repository.dart';

class StoreUnitInfo extends BaseUseCase<UnitInfoModel, StoreUnitInfoParams> {
  final BaseCalculateUnitsRepository repository;
  StoreUnitInfo({required this.repository});
  @override
  Future<Either<Failure, UnitInfoModel>> call(StoreUnitInfoParams params) async {
    return await repository.storeUnitInfo(params);
  }
}

class StoreUnitInfoParams {
  final String unitName;
  final String unitType;
  final int unitLocationId;
  final int unitAreaId;
  final int unitFloorId;

  StoreUnitInfoParams({required this.unitName, required this.unitType, required this.unitLocationId, required this.unitAreaId, required this.unitFloorId});
}
