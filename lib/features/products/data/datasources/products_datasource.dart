import 'package:injectable/injectable.dart';
import 'package:interview_test/features/products/data/datasources/base_products_datasource.dart';
import 'package:interview_test/features/products/data/models/product_model/product_model.dart';

import '../../../../core/network/api_strings.dart';
import '../../../../core/network/network_interface.dart';

@Injectable(as: BaseProductsDataSource)
class ProductsDataSource implements BaseProductsDataSource {
  final BaseNetwork network;
  ProductsDataSource({required this.network});
  @override
  Future<List<ProductModel>> getProducts() async {
    final response = await network.get(ApiStrings.getProducts);
    List<ProductModel> products = response
        .map<ProductModel>((product) => ProductModel.fromJson(product))
        .toList();
    return products;
  }
}
