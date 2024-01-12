import '../product_entity.dart';

class ProductDto extends ProductEntity {
  ProductDto({
    required super.name,
    required super.description,
    super.imgUrl,
    required super.price,
  });
}
