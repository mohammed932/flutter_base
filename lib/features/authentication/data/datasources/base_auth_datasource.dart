import 'package:interview_test/features/authentication/data/models/user_model.dart';

import '../../domin/repositories/base_login_repository.dart';

abstract class BaseAuthDataSource {
  Future<UserModel> Login(LoginParams loginParams);
}
