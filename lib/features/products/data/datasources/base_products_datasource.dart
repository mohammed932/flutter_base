import 'package:interview_test/features/products/data/models/product_model/product_model.dart';

abstract class BaseProductsDataSource {
  Future<List<ProductModel>> getProducts();
}
