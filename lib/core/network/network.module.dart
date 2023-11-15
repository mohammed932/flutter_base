import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_test/core/network/dio_helper.dart';
import 'package:interview_test/core/network/network_interface.dart';

@module
abstract class NetworkDiModule {
  @lazySingleton
  BaseNetwork get network => DioHelper(dio: Dio());
}
