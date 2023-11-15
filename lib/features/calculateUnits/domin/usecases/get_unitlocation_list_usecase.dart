import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/unit_location_model.dart';
import '../repositories/base_calculate_units_repository.dart';

class GetUnitLocationList
    extends BaseUseCase<List<UnitLocationModel>, NoParams> {
  final BaseCalculateUnitsRepository repository;
  GetUnitLocationList({required this.repository});
  @override
  Future<Either<Failure, List<UnitLocationModel>>> call(NoParams params) async {
    return await repository.getUnitLocationList(params);
  }
}
