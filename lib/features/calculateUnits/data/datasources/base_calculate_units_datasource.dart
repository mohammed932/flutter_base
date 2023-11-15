import 'package:interview_test/core/usecase/base_usecase.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';

import '../models/unit_area_model.dart';

abstract class BaseCalculateUnitsDataSource {
  Future<List<UnitLocationModel>> getUnitLocationList(NoParams loginParams);
  Future<List<UnitAreaModel>> getUnitAreaList(NoParams loginParams);
}
