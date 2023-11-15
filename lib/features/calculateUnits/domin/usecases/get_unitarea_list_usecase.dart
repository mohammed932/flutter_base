import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/unit_area_model.dart';
import '../repositories/base_calculate_units_repository.dart';

class GetUnitAreaList extends BaseUseCase<List<UnitAreaModel>, NoParams> {
  final BaseCalculateUnitsRepository repository;
  GetUnitAreaList({required this.repository});
  @override
  Future<Either<Failure, List<UnitAreaModel>>> call(NoParams params) async {
    return await repository.getUnitAreaList(params);
  }
}
