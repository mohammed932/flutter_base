import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/constants/enums.dart';
import '../../../../../../core/errors/failure.dart';
import '../../../../../../core/usecase/base_usecase.dart';
import '../../../../data/models/carousel_model.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

abstract class IHomeBloc extends Bloc<HomeEvent, HomeState> {
  IHomeBloc(super.initialState);
}

class HomeBloc extends IHomeBloc {
  final BaseUseCase<List<CarouselModel>, NoParams> getCurouselListUsecase;
  HomeBloc({required this.getCurouselListUsecase}) : super(_Initial()) {
    on<HomeEvent>((event, emit) async {
      if (event is _GetCarouselList) {
        getCarouselList();
      }
    });
  }
  Future getCarouselList() async {
    // emit(state.copyWith(
    //   loading: RequestState.LOADING,
    // ));
    Either<Failure, List<CarouselModel>> response =
        await getCurouselListUsecase.call(NoParams());

    response.fold((error) {
      // emit(state.copyWith(
      //   errorMessage: error.message,
      //   loading: RequestState.ERROR,
      // ));
    }, (list) {
      // emit(state.copyWith(
      //   carouselsList: list,
      //   loading: RequestState.LOADED,
      // ));
    });
  }
}
