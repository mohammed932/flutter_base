// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/network.module.dart' as _i24;
import 'core/network/network_interface.dart' as _i9;
import 'core/usecase/base_usecase.dart' as _i10;
import 'features/authentication/authentication.module.dart' as _i21;
import 'features/authentication/data/datasources/base_auth_datasource.dart'
    as _i3;
import 'features/authentication/data/models/user_model.dart' as _i11;
import 'features/authentication/domin/repositories/base_login_repository.dart'
    as _i4;
import 'features/authentication/presentation/screens/login/bloc/login_bloc.dart'
    as _i19;
import 'features/calculateUnits/calculate_units.module.dart' as _i22;
import 'features/calculateUnits/data/datasources/base_calculate_units_datasource.dart'
    as _i5;
import 'features/calculateUnits/data/models/unit_area_model.dart' as _i13;
import 'features/calculateUnits/data/models/unit_floor_model.dart' as _i14;
import 'features/calculateUnits/data/models/unit_info_model.dart' as _i15;
import 'features/calculateUnits/data/models/unit_location_model.dart' as _i12;
import 'features/calculateUnits/domin/repositories/base_calculate_units_repository.dart'
    as _i6;
import 'features/calculateUnits/domin/usecases/store_unit_info_usecase.dart'
    as _i16;
import 'features/calculateUnits/presentation/screens/unit_info/bloc/unit_info_bloc.dart'
    as _i20;
import 'features/home/data/datasources/base_home_datasource.dart' as _i7;
import 'features/home/data/models/carousel_model.dart' as _i17;
import 'features/home/domin/repositories/base_home_repository.dart' as _i8;
import 'features/home/home.module.dart' as _i23;
import 'features/home/presentation/screens/home/bloc/home_bloc.dart' as _i18;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final authDiModule = _$AuthDiModule();
    final calculateUnitsDiModule = _$CalculateUnitsDiModule();
    final homeDiModule = _$HomeDiModule();
    final networkDiModule = _$NetworkDiModule();
    gh.lazySingleton<_i3.BaseAuthDataSource>(() => authDiModule.authDataSource);
    gh.lazySingleton<_i4.BaseAuthRepository>(
        () => authDiModule.baseAuthRepository);
    gh.lazySingleton<_i5.BaseCalculateUnitsDataSource>(
        () => calculateUnitsDiModule.calculateUnitsDataSource);
    gh.lazySingleton<_i6.BaseCalculateUnitsRepository>(
        () => calculateUnitsDiModule.calculateUnitsRepository);
    gh.lazySingleton<_i7.BaseHomeDataSource>(() => homeDiModule.homeDataSource);
    gh.lazySingleton<_i8.BaseHomeRepository>(
        () => homeDiModule.baseHomeRepository);
    gh.lazySingleton<_i9.BaseNetwork>(() => networkDiModule.network);
    gh.lazySingleton<_i10.BaseUseCase<_i11.UserModel, _i4.LoginParams>>(
        () => authDiModule.getLoginUsecase);
    gh.lazySingleton<
            _i10.BaseUseCase<List<_i12.UnitLocationModel>, _i10.NoParams>>(
        () => calculateUnitsDiModule.getUnitLocationList);
    gh.lazySingleton<_i10.BaseUseCase<List<_i13.UnitAreaModel>, _i10.NoParams>>(
        () => calculateUnitsDiModule.getUnitAreaList);
    gh.lazySingleton<
            _i10.BaseUseCase<List<_i14.UnitFloorModel>, _i10.NoParams>>(
        () => calculateUnitsDiModule.getUnitFloorList);
    gh.lazySingleton<
            _i10.BaseUseCase<_i15.UnitInfoModel, _i16.StoreUnitInfoParams>>(
        () => calculateUnitsDiModule.storeUnitInfo);
    gh.lazySingleton<_i10.BaseUseCase<List<_i17.CarouselModel>, _i10.NoParams>>(
        () => homeDiModule.getCurouselListUsecase);
    gh.factory<_i18.IHomeBloc>(() => homeDiModule.loginBloc);
    gh.factory<_i19.ILoginBloc>(() => authDiModule.loginBloc);
    gh.factory<_i20.IUnitInfoBloc>(() => calculateUnitsDiModule.unitInfoBloc);
    return this;
  }
}

class _$AuthDiModule extends _i21.AuthDiModule {}

class _$CalculateUnitsDiModule extends _i22.CalculateUnitsDiModule {}

class _$HomeDiModule extends _i23.HomeDiModule {}

class _$NetworkDiModule extends _i24.NetworkDiModule {}
