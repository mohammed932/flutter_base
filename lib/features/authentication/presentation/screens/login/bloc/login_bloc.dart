import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/core/constants/enums.dart';
import 'package:interview_test/core/extentions/string_extensions.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';

import '../../../../../../core/errors/failure.dart';
import '../../../../../../core/usecase/base_usecase.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

abstract class ILoginBloc extends Bloc<LoginEvent, LoginState> {
  ILoginBloc(super.initialState);
  TextEditingController get phoneContoller;
  TextEditingController get passwordContoller;
  bool validator(BuildContext context);
}

class LoginBloc extends ILoginBloc {
  final BaseUseCase<User, LoginParams> loginUsecase;
  final TextEditingController phoneContoller = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();
  LoginBloc({required this.loginUsecase}) : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      if (event is _login) {
        login();
      }
    });
  }
  bool validator(BuildContext context) {
    if (phoneContoller.text.isNullOrEmpty(context) != null) {
      emit(state.copyWith(
          errorMessage: phoneContoller.text.isNullOrEmpty(context)!));
      return false;
    }
    if (phoneContoller.text.isValidNumber(context) != null) {
      emit(state.copyWith(
          errorMessage: phoneContoller.text.isValidNumber(context)!));
      return false;
    }
    if (passwordContoller.text.isNullOrEmpty(context) != null) {
      emit(state.copyWith(
          errorMessage: passwordContoller.text.isNullOrEmpty(context)!));
      return false;
    }
    if (passwordContoller.text.isValidNumber(context) != null) {
      emit(state.copyWith(
          errorMessage: passwordContoller.text.isValidNumber(context)!));
      return false;
    }
    return true;
  }

  Future login() async {
    emit(state.copyWith(
      loading: RequestState.LOADING,
      errorMessage: '',
    ));
    Either<Failure, User> response = await loginUsecase.call(LoginParams(
        phone: phoneContoller.text.trim(),
        password: passwordContoller.text.trim()));

    response.fold((error) {
      emit(state.copyWith(
        errorMessage: error.message,
        loading: RequestState.ERROR,
      ));
    }, (products) {
      emit(state.copyWith(
        loggedIn: products,
        loading: RequestState.LOADED,
      ));
    });
  }
}
