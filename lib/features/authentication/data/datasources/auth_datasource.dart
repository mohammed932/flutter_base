import '../../../../core/network/network_interface.dart';
import '../../../../features/authentication/data/datasources/base_auth_datasource.dart';
import '../../domin/repositories/base_login_repository.dart';
import '../models/user_model.dart';

class AutDataSource implements BaseAuthDataSource {
  final BaseNetwork network;
  AutDataSource({required this.network});

  @override
  Future<UserModel> Login(LoginParams loginParams) async {
    try {
      // final response = await network.post(ApiStrings.login,
      //     data: {"phone": loginParams.phone, "password": loginParams.password});
      await Future.delayed(Duration(seconds: 1));

      UserModel user = UserModel(
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
  Future<UserModel> Login(LoginParams loginParams) async {
    try {
      // final response = await network.post(ApiStrings.login,
      //     data: {"phone": loginParams.phone, "password": loginParams.password});
      await Future.delayed(Duration(seconds: 10));

      UserModel user = UserModel(
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
