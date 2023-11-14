import 'package:dartz/dartz.dart';

import '../../../../../features/authentication/domin/repositories/base_login_repository.dart';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../../data/models/user_model.dart';

class LoginUsecase extends BaseUseCase<UserModel, LoginParams> {
  final BaseAuthRepository repository;
  LoginUsecase({required this.repository});
  @override
  Future<Either<Failure, UserModel>> call(LoginParams params) async {
    return await repository.login(params);
  }
}
