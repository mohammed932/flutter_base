import 'package:dartz/dartz.dart';
import 'package:interview_test/features/authentication/data/datasources/base_auth_datasource.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';
import 'package:interview_test/features/authentication/domin/repositories/base_login_repository.dart';
import 'package:interview_test/features/authentication/domin/usecases/login_usecase.dart';

import '../../../../core/errors/exception.dart';
import '../../../../core/errors/failure.dart';

class AuthRepository implements BaseAuthRepository {
  final BaseAuthDataSource authDataSource;
  AuthRepository({required this.authDataSource});

  @override
  Future<Either<Failure, User>> login(LoginParams loginParams) async {
    try {
      final products = await authDataSource.Login(loginParams);
      return Right(products);
    } on SereverException catch (e) {
      return Left(ServerFailure(message: e.message));
    } on AppTimeoutException catch (e) {
      return Left(ServerFailure(message: e.message!));
    } catch (e) {
      return const Left(ServerFailure(message: 'unexpected error occured'));
    }
  }
}
