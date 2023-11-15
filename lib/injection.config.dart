// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/network/network_interface.dart' as _i7;
import 'core/usecase/base_usecase.dart' as _i10;
import 'features/authentication/authentication.module.dart' as _i17;
import 'features/authentication/data/datasources/base_auth_datasource.dart'
    as _i3;
import 'features/authentication/data/models/user_model.dart' as _i11;
import 'features/authentication/domin/repositories/base_login_repository.dart'
    as _i4;
import 'features/authentication/presentation/screens/login/bloc/login_bloc.dart'
    as _i15;
import 'features/home/data/datasources/base_home_datasource.dart' as _i5;
import 'features/home/data/models/carousel_model.dart' as _i12;
import 'features/home/domin/repositories/base_home_repository.dart' as _i6;
import 'features/home/home.module.dart' as _i18;
import 'features/home/presentation/screens/home/bloc/home_bloc.dart' as _i14;
import 'features/products/data/datasources/base_products_datasource.dart'
    as _i9;
import 'features/products/domain/entities/product.dart' as _i13;
import 'features/products/domain/repositories/base_product_repository.dart'
    as _i8;
import 'features/products/presentation/blocs/bloc/products_bloc.dart' as _i16;
import 'features/products/products.module.dart' as _i19;

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
    final homeDiModule = _$HomeDiModule();
    final productsDiModule = _$ProductsDiModule();
    gh.lazySingleton<_i3.BaseAuthDataSource>(() => authDiModule.authDataSource);
    gh.lazySingleton<_i4.BaseAuthRepository>(
        () => authDiModule.baseAuthRepository);
    gh.lazySingleton<_i5.BaseHomeDataSource>(() => homeDiModule.homeDataSource);
    gh.lazySingleton<_i6.BaseHomeRepository>(
        () => homeDiModule.baseHomeRepository);
    gh.lazySingleton<_i7.BaseNetwork>(() => productsDiModule.baseNetwork);
    gh.lazySingleton<_i8.BaseProductRepository>(
        () => productsDiModule.baseProductRepository);
    gh.lazySingleton<_i9.BaseProductsDataSource>(
        () => productsDiModule.productsDataSource);
    gh.lazySingleton<_i10.BaseUseCase<_i11.UserModel, _i4.LoginParams>>(
        () => authDiModule.getLoginUsecase);
    gh.lazySingleton<_i10.BaseUseCase<List<_i12.CarouselModel>, _i10.NoParams>>(
        () => homeDiModule.getCurouselListUsecase);
    gh.lazySingleton<_i10.BaseUseCase<List<_i13.Product>, _i10.NoParams>>(
        () => productsDiModule.getProductsUsecase);
    gh.factory<_i14.IHomeBloc>(() => homeDiModule.loginBloc);
    gh.factory<_i15.ILoginBloc>(() => authDiModule.loginBloc);
    gh.factory<_i16.IProductsBloc>(() => productsDiModule.productsBloc);
    return this;
  }
}

class _$AuthDiModule extends _i17.AuthDiModule {}

class _$HomeDiModule extends _i18.HomeDiModule {}

class _$ProductsDiModule extends _i19.ProductsDiModule {}
