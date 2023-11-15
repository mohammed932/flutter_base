import 'package:injectable/injectable.dart';
import 'package:interview_test/features/calculateUnits/data/datasources/base_calculate_units_datasource.dart';
import 'package:interview_test/features/calculateUnits/data/datasources/calculate_units_datasource.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';
import 'package:interview_test/features/calculateUnits/domin/repositories/base_calculate_units_repository.dart';
import 'package:interview_test/features/calculateUnits/presentation/screens/unit_info/bloc/unit_info_bloc.dart';

import '../../core/network/network_interface.dart';
import '../../core/usecase/base_usecase.dart';
import '../../injection.dart';
import 'data/repositories/calculate_units_repository.dart';
import 'domin/usecases/get_unitlocation_list_usecase.dart';

@module
abstract class CalculateUnitsDiModule {
  // DataSourse
  @lazySingleton
  BaseCalculateUnitsDataSource get calculateUnitsDataSource =>
      CalculateUnitDataSource(network: getIt.get<BaseNetwork>());

  // Repository
  @lazySingleton
  BaseCalculateUnitsRepository get calculateUnitsRepository =>
      CalculateUnitsRepository(
          calculateUnitsDataSource: calculateUnitsDataSource);
  // UseCase
  @lazySingleton
  BaseUseCase<List<UnitLocationModel>, NoParams> get getUnitLocationList =>
      GetUnitLocationList(repository: calculateUnitsRepository);
  // Bloc
  @injectable
  IUnitInfoBloc get unitInfoBloc =>
      UnitInfoBloc(getUnitLocationList: getUnitLocationList);
}
