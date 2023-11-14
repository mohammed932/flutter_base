import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/errors/failure.dart';
import '../../data/models/user_model.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, UserModel>> login(LoginParams loginParams);
}

// login_params.dart
class LoginParams extends Equatable {
  final String phone;
  final String password;

  LoginParams({required this.phone, required this.password});

  @override
  List<Object?> get props => [this.phone, this.password];
}
