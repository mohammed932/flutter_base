import 'package:dartz/dartz.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';

import '../../../../core/errors/failure.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, User>> login(LoginParams loginParams);
}
