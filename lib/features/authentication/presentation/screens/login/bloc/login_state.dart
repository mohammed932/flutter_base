part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(RequestState.Init) RequestState loading,
    User? loggedIn,
    @Default('') String errorMessage,
  }) = _LoginState;

  factory LoginState.initial() => const LoginState();
}