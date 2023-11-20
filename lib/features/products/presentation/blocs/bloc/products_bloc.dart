import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:interview_test/core/constants/enums.dart';

import '../../../../../core/usecase/base_usecase.dart';
import '../../../domain/entities/product.dart';

part 'products_event.dart';
part 'products_state.dart';
part 'products_bloc.freezed.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final BaseUseCase productsUseCase;
  ProductsBloc({required this.productsUseCase}) : super(const ProductsState()) {
    on<LoadProductsEvent>((event, emit) async {
      final result = await productsUseCase(const NoParams());
      result.fold((error) {
        emit(state.copyWith(
          errorMessage: error.message,
          productListState: RequestState.ERROR,
        ));
      }, (products) {
        emit(state.copyWith(
          products: products,
          productListState: RequestState.LOADED,
        ));
      });
    });
  }
}
