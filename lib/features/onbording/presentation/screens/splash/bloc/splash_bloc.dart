import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/router/router.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc(BuildContext context) : super(SplashState.initial()) {
    on<SplashEvent>((event, emit) async {
      await Future.delayed(Duration(seconds: 3));
      context.router.replace(OnBordingRoute());
    });
  }
}
