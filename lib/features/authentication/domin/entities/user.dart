import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int? id;
  final String? name;
  final String? image;
  final String? email;
  final String? phoneNumber;

  const User({
    this.id,
    this.name,
    this.image,
    this.email,
    this.phoneNumber,
  });

  @override
  List<Object?> get props => [id, name, image, email, phoneNumber];
}

// login_params.dart
class LoginParams extends Equatable {
  final String phone;
  final String password;

  LoginParams({required this.phone, required this.password});

  @override
  List<Object?> get props => [this.phone, this.password];
}
