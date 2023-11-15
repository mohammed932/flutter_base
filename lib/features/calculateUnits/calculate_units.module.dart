import 'package:injectable/injectable.dart';
import 'package:interview_test/features/calculateUnits/data/datasources/base_calculate_units_datasource.dart';
import 'package:interview_test/features/calculateUnits/data/datasources/calculate_units_datasource.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_area_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_floor_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_info_model.dart';
import 'package:interview_test/features/calculateUnits/data/models/unit_location_model.dart';
import 'package:interview_test/features/calculateUnits/domin/repositories/base_calculate_units_repository.dart';
import 'package:interview_test/features/calculateUnits/domin/usecases/get_unitarea_list_usecase.dart';
import 'package:interview_test/features/calculateUnits/domin/usecases/get_unitfloor_list_usecase.dart';
import 'package:interview_test/features/calculateUnits/domin/usecases/store_unit_info_usecase.dart';
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
  @lazySingleton
  BaseUseCase<List<UnitAreaModel>, NoParams> get getUnitAreaList =>
      GetUnitAreaList(repository: calculateUnitsRepository);
  @lazySingleton
  BaseUseCase<List<UnitFloorModel>, NoParams> get getUnitFloorList =>
      GetUnitFloorList(repository: calculateUnitsRepository);
  @lazySingleton
  BaseUseCase<UnitInfoModel, StoreUnitInfoParams> get storeUnitInfo =>
      StoreUnitInfo(repository: calculateUnitsRepository);
  // Bloc
  @injectable
  IUnitInfoBloc get unitInfoBloc => UnitInfoBloc(
        getUnitLocationList: getUnitLocationList,
        getUnitArealist: getUnitAreaList,
        getUnitFloorlist: getUnitFloorList,
        storeUnitInfo: storeUnitInfo,
      );
}
