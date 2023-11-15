import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_info_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';
import 'package:interview_test/features/calculateUnits/domin/usecases/store_unit_info_usecase.dart';

import '../models/unit_area_model.dart';

abstract class BaseCalculateUnitsDataSource {
  Future<List<UnitLocationModel>> getUnitLocationList(NoParams params);
  Future<List<UnitAreaModel>> getUnitAreaList(NoParams params);
  Future<List<UnitFloorModel>> getUnitFloorList(NoParams params);
  Future<UnitInfoModel> storeUnitInfo(StoreUnitInfoParams storeUnitInfoParams);
}
