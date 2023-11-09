part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(RequestState.LOADING) RequestState loading,
    User? loggedIn,
    @Default('') String errorMessage,
  }) = _LoginState;

  factory LoginState.initial() =>
      const LoginState(loading: RequestState.LOADING);
}
