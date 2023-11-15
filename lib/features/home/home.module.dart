import 'package:injectable/injectable.dart';

import '../../core/network/network_interface.dart';
import '../../core/usecase/base_usecase.dart';
import '../../features/home/data/datasources/base_home_datasource.dart';
import '../../features/home/data/datasources/home_datasource.dart';
import '../../features/home/data/models/carousel_model.dart';
import '../../features/home/domin/repositories/base_home_repository.dart';
import '../../features/home/domin/usecases/get_carousel_list_usecase.dart';
import '../../features/home/presentation/screens/home/bloc/home_bloc.dart';
import '../../injection.dart';
import 'data/repositories/auth_repository.dart';

@module
abstract class HomeDiModule {
  //DataSourse
  @lazySingleton
  BaseHomeDataSource get homeDataSource =>
      HomeDataSource(network: getIt.get<BaseNetwork>());

  // Repository
  @lazySingleton
  BaseHomeRepository get baseHomeRepository =>
      HomeRepository(homeDataSource: homeDataSource);
  //UseCase
  @lazySingleton
  BaseUseCase<List<CarouselModel>, NoParams> get getCurouselListUsecase =>
      GetCurouselListUsecase(repository: baseHomeRepository);
  //Bloc
  @injectable
  IHomeBloc get loginBloc =>
      HomeBloc(getCurouselListUsecase: getCurouselListUsecase);
}
