import 'package:dartz/dartz.dart';
import 'package:interview_test/features/products/data/models/product_model/product_model.dart';

import '../../../../core/errors/failure.dart';

abstract class BaseProductRepository {
  Future<Either<Failure, List<ProductModel>>> getProducts();
}
