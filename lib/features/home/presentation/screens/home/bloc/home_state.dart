part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(RequestState.LOADING) RequestState loading,
    List<CarouselModel>? carouselsList,
    @Default('') String errorMessage,
  }) = _HomeState;
  const factory HomeState.initial() = _Initial;
}
