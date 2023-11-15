// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/network_interface.dart' as _i9;
import 'core/usecase/base_usecase.dart' as _i12;
import 'features/authentication/authentication.module.dart' as _i21;
import 'features/authentication/data/datasources/base_auth_datasource.dart'
    as _i3;
import 'features/authentication/data/models/user_model.dart' as _i13;
import 'features/authentication/domin/repositories/base_login_repository.dart'
    as _i4;
import 'features/authentication/presentation/screens/login/bloc/login_bloc.dart'
    as _i18;
import 'features/calculateUnits/calculate_units.module.dart' as _i22;
import 'features/calculateUnits/data/datasources/base_calculate_units_datasource.dart'
    as _i5;
import 'features/calculateUnits/data/models/unit_location_model.dart' as _i16;
import 'features/calculateUnits/domin/repositories/base_calculate_units_repository.dart'
    as _i6;
import 'features/calculateUnits/presentation/screens/unit_info/bloc/unit_info_bloc.dart'
    as _i20;
import 'features/home/data/datasources/base_home_datasource.dart' as _i7;
import 'features/home/data/models/carousel_model.dart' as _i14;
import 'features/home/domin/repositories/base_home_repository.dart' as _i8;
import 'features/home/home.module.dart' as _i23;
import 'features/home/presentation/screens/home/bloc/home_bloc.dart' as _i17;
import 'features/products/data/datasources/base_products_datasource.dart'
    as _i11;
import 'features/products/domain/entities/product.dart' as _i15;
import 'features/products/domain/repositories/base_product_repository.dart'
    as _i10;
import 'features/products/presentation/blocs/bloc/products_bloc.dart' as _i19;
import 'features/products/products.module.dart' as _i24;

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
    final productsDiModule = _$ProductsDiModule();
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
    gh.lazySingleton<_i9.BaseNetwork>(() => productsDiModule.baseNetwork);
    gh.lazySingleton<_i10.BaseProductRepository>(
        () => productsDiModule.baseProductRepository);
    gh.lazySingleton<_i11.BaseProductsDataSource>(
        () => productsDiModule.productsDataSource);
    gh.lazySingleton<_i12.BaseUseCase<_i13.UserModel, _i4.LoginParams>>(
        () => authDiModule.getLoginUsecase);
    gh.lazySingleton<_i12.BaseUseCase<List<_i14.CarouselModel>, _i12.NoParams>>(
        () => homeDiModule.getCurouselListUsecase);
    gh.lazySingleton<_i12.BaseUseCase<List<_i15.Product>, _i12.NoParams>>(
        () => productsDiModule.getProductsUsecase);
    gh.lazySingleton<
            _i12.BaseUseCase<List<_i16.UnitLocationModel>, _i12.NoParams>>(
        () => calculateUnitsDiModule.getUnitLocationList);
    gh.factory<_i17.IHomeBloc>(() => homeDiModule.loginBloc);
    gh.factory<_i18.ILoginBloc>(() => authDiModule.loginBloc);
    gh.factory<_i19.IProductsBloc>(() => productsDiModule.productsBloc);
    gh.factory<_i20.IUnitInfoBloc>(() => calculateUnitsDiModule.unitInfoBloc);
    return this;
  }
}

class _$AuthDiModule extends _i21.AuthDiModule {}

class _$CalculateUnitsDiModule extends _i22.CalculateUnitsDiModule {}

class _$HomeDiModule extends _i23.HomeDiModule {}

class _$ProductsDiModule extends _i24.ProductsDiModule {}
