// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/products/data/datasources/base_products_datasource.dart'
    as _i6;
import '../../features/products/data/datasources/products_datasource.dart'
    as _i7;
import '../../features/products/data/repositories/products_repository.dart'
    as _i9;
import '../../features/products/domain/repositories/base_product_repository.dart'
    as _i8;
import '../../features/products/domain/usecases/get_products_usecase.dart'
    as _i10;
import '../network/dio_helper.dart' as _i5;
import '../network/network_interface.dart' as _i4;
import 'injectable_modules.dart' as _i11;

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
    final injectableModule = _$InjectableModule();
    gh.singleton<_i3.Dio>(injectableModule.dio);
    gh.lazySingleton<_i4.BaseNetwork>(() => _i5.DioHelper(dio: gh<_i3.Dio>()));
    gh.factory<_i6.BaseProductsDataSource>(
        () => _i7.ProductsDataSource(network: gh<_i4.BaseNetwork>()));
    gh.factory<_i8.BaseProductRepository>(() => _i9.ProductsRepository(
        productsDataSource: gh<_i6.BaseProductsDataSource>()));
    gh.factory<_i10.GetProductsUsecase>(() =>
        _i10.GetProductsUsecase(repository: gh<_i8.BaseProductRepository>()));
    return this;
  }
}

class _$InjectableModule extends _i11.InjectableModule {}
