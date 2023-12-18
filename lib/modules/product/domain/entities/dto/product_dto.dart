import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';

class ProductDto extends ProductEntity {
  ProductDto({
    required super.name,
    required super.description,
    super.imgUrl,
    required super.price,
  });
}
