part of 'products_bloc.dart';

@freezed
abstract class ProductsEvent with _$ProductsEvent {
  const factory ProductsEvent.onLoadProducts() = LoadProductsEvent;
}
