import 'package:interview_test/features/authentication/domin/entities/user.dart';
import 'package:interview_test/features/authentication/domin/usecases/login_usecase.dart';

abstract class BaseAuthDataSource {
  Future<User> Login(LoginParams loginParams);
}
