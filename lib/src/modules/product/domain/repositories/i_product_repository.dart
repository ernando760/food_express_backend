import '../entities/dto/product_dto.dart';
import '../entities/product_entity.dart';
import '../errors/i_product_exception.dart';

abstract class IProductRepository {
  Future<({List<ProductEntity>? products, IProductException? exception})>
      getAllProducts([limit = 10]);
  Future<({ProductEntity? product, IProductException? exception})>
      getProductById(String? id);
  Future<({String? message, IProductException? exception})> createProduct(
      ProductDto productDto);
  Future<({String? message, IProductException? exception})> deleteProduct(
      String? id);
  Future<({String? message, IProductException? exception})> updateProduct(
      String? id, ProductDto newProductDto);
}
