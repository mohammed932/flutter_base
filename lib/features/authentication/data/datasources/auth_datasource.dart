import 'package:interview_test/features/authentication/data/datasources/base_auth_datasource.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';

import '../../../../core/network/network_interface.dart';

class AutDataSource implements BaseAuthDataSource {
  final BaseNetwork network;
  AutDataSource({required this.network});

  @override
  Future<User> Login(LoginParams loginParams) async {
    try {
      // final response = await network.post(ApiStrings.login,
      //     data: {"phone": loginParams.phone, "password": loginParams.password});
      await Future.delayed(Duration(seconds: 1));

      User user = User(
        phoneNumber: "1111",
        email: "E@e.com",
        name: "Mohamed Adel",
      );
      return user;
    } catch (e) {
      rethrow;
    }
  }
}

class AutDataSourceByGraphQl implements BaseAuthDataSource {
  final BaseNetwork network;
  AutDataSourceByGraphQl({required this.network});

  @override
  Future<User> Login(LoginParams loginParams) async {
    try {
      // final response = await network.post(ApiStrings.login,
      //     data: {"phone": loginParams.phone, "password": loginParams.password});
      await Future.delayed(Duration(seconds: 10));

      User user = User(
        phoneNumber: "1111",
        email: "E@e.com",
        name: "Mohamed Adel",
      );
      return user;
    } catch (e) {
      rethrow;
    }
  }
}
