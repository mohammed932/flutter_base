import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase/base_usecase.dart';
import '../entities/product.dart';
import '../repositories/base_product_repository.dart';

@injectable
class GetProductsUsecase extends BaseUseCase<List<Product>, NoParams> {
  final BaseProductRepository repository;
  GetProductsUsecase({required this.repository});
  @override
  Future<Either<Failure, List<Product>>> call(NoParams params) async {
    return await repository.getProducts();
  }
}
