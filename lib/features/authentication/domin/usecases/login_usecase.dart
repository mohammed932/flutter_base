import 'package:dartz/dartz.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';
import 'package:interview_test/features/authentication/domin/repositories/base_login_repository.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';

class LoginUsecase extends BaseUseCase<User, LoginParams> {
  final BaseAuthRepository repository;
  LoginUsecase({required this.repository});
  @override
  Future<Either<Failure, User>> call(LoginParams params) async {
    return await repository.login(params);
  }
}
