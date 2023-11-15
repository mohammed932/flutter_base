import 'package:dartz/dartz.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_area_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/unit_info_model.dart';
import '../../data/models/unit_location_model.dart';
import '../usecases/store_unit_info_usecase.dart';

abstract class BaseCalculateUnitsRepository {
  Future<Either<Failure, List<UnitLocationModel>>> getUnitLocationList(
      NoParams noParams);
  Future<Either<Failure, List<UnitAreaModel>>> getUnitAreaList(
      NoParams noParams);
  Future<Either<Failure, List<UnitFloorModel>>> getUnitFloorList(
      NoParams noParams);
  Future<Either<Failure, UnitInfoModel>> storeUnitInfo(
      StoreUnitInfoParams storeUnitInfoParams);
}
