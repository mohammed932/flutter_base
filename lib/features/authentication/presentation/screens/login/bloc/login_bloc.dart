import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/core/constants/enums.dart';
import 'package:interview_test/features/authentication/domin/entities/user.dart';

import '../../../../../../core/usecase/base_usecase.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

abstract class ILoginBloc extends Bloc<LoginEvent, LoginState> {
  ILoginBloc(super.initialState);
}

class LoginBloc extends ILoginBloc {
  final BaseUseCase<User, LoginParams> loginUsecase;
  final TextEditingController phoneContoller = TextEditingController();
  final TextEditingController passwordContoller = TextEditingController();
  LoginBloc({required this.loginUsecase}) : super(LoginState.initial()) {
    log("phoneContoller ${phoneContoller.text}");
    on<LoginEvent>((event, emit) {
      //loginUsecase.call(params)
    });
  }
}
