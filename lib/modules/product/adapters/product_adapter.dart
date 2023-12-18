import 'package:delivery_project_using_clean_code/modules/product/adapters/comment_adapter.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';

class ProductAdapter {
  static ProductEntity fromJson(dynamic data) {
    return ProductEntity(
      id: data["id"],
      name: data["name"],
      imgUrl: data["img_url"],
      description: data["description"],
      price: data["price"],
    );
  }

  static Map<String, dynamic> toMap(ProductEntity product) => {
        "id": product.id,
        "name": product.name,
        "description": product.description,
        "img_url": product.imgUrl,
        "comments":
            product.comments.map((e) => CommentAdapter.toMap(e)).toList(),
        "price": product.price,
      };
}
