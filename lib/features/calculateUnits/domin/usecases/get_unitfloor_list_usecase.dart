import 'package:dartz/dartz.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../repositories/base_calculate_units_repository.dart';

class GetUnitFloorList extends BaseUseCase<List<UnitFloorModel>, NoParams> {
  final BaseCalculateUnitsRepository repository;
  GetUnitFloorList({required this.repository});
  @override
  Future<Either<Failure, List<UnitFloorModel>>> call(NoParams params) async {
    return await repository.getUnitFloorList(params);
  }
}
