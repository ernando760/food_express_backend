import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/product_entity.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_repository.dart';

class GetAllProducts {
  final IProductRepository _repository;

  GetAllProducts(this._repository);

  Future<({List<ProductEntity>? products, IProductException? exception})> call(
      [int limit = 10]) async {
    return _repository.getAllProducts(limit);
  }
}
