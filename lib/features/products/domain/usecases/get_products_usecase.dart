import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:interview_test/features/products/data/models/product_model/product_model.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../repositories/base_product_repository.dart';

@LazySingleton(as: BaseUseCase<List<ProductModel>, NoParams>)
class GetProductsUsecase extends BaseUseCase<List<ProductModel>, NoParams> {
  final BaseProductRepository repository;
  GetProductsUsecase({required this.repository});
  @override
  Future<Either<Failure, List<ProductModel>>> call(NoParams params) async {
    return await repository.getProducts();
  }
}
