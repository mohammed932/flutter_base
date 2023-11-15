import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/unit_location_model.dart';

abstract class BaseCalculateUnitsRepository {
  Future<Either<Failure, List<UnitLocationModel>>> getUnitLocationList(
      NoParams loginParams);
}
