import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@JsonSerializable()
@freezed
class UserModel extends User with _$UserModel {
  const UserModel._(); // private constructor for the freezed union

  const factory UserModel({
    int? id,
    String? name,
    String? image,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _UserModel;

  factory UserModel.fromUser(User user) {
    return UserModel(
      id: user.id,
      name: user.name,
      image: user.image,
      email: user.email,
      phoneNumber: user.phoneNumber,
    );
  }

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
