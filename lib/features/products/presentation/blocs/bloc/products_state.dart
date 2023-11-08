part of 'products_bloc.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(RequestState.LOADING) RequestState productListState,
    @Default([]) List<Product> products,
    @Default('') String errorMessage,
  }) = _ProductsState;
}
