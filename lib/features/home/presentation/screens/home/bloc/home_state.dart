part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestState.LOADING) RequestState requestState,
    List<CarouselModel>? carouselsList,
    @Default('') String errorMessage,
  }) = _HomeState;
  
}
