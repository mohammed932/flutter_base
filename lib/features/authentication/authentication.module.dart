import 'package:injectable/injectable.dart';
import 'package:interview_test/features/authentication/data/datasources/auth_datasource.dart';
import 'package:interview_test/features/authentication/data/datasources/base_auth_datasource.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';
import 'package:interview_test/features/authentication/domin/repositories/base_login_repository.dart';
import 'package:interview_test/features/authentication/domin/usecases/login_usecase.dart';
import 'package:interview_test/features/authentication/presentation/screens/login/bloc/login_bloc.dart';

import '../../core/network/network_interface.dart';
import '../../core/usecase/base_usecase.dart';
import '../../injection.dart';
import 'data/repositories/auth_repository.dart';

@module
abstract class AuthDiModule {
  // DataSourse
  @lazySingleton
  BaseAuthDataSource get authDataSource =>
      AutDataSource(network: getIt.get<BaseNetwork>());

  // Repository
  @lazySingleton
  BaseAuthRepository get baseAuthRepository =>
      AuthRepository(authDataSource: authDataSource);
  // UseCase
  @lazySingleton
  BaseUseCase<User, LoginParams> get getLoginUsecase =>
      LoginUsecase(repository: baseAuthRepository);
  // Bloc
  @injectable
  ILoginBloc get loginBloc => LoginBloc(loginUsecase: getLoginUsecase);
}
