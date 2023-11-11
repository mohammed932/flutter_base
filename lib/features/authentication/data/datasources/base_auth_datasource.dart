import 'package:interview_test/features/authentication/domin/entities/user.dart';

abstract class BaseAuthDataSource {
  Future<User> Login(LoginParams loginParams);
}
