import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@JsonSerializable()
@freezed
class UserModel with _$UserModel {
  const UserModel._(); // private constructor for the freezed union

  const factory UserModel({
    int? id,
    String? name,
    String? image,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
