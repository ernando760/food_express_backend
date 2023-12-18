import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_comment_entity.dart';

class ProductEntity {
  final String? id;
  final String name;
  final String description;
  final String? imgUrl;
  List<ProductCommentEntity> comments;
  final double price;

  ProductEntity({
    this.id,
    required this.name,
    required this.description,
    this.comments = const [],
    this.imgUrl,
    required this.price,
  });

  double getAllCommentsRatings() => comments
      .map((e) => e.ratings)
      .reduce((value, element) => value + element);

  @override
  String toString() =>
      "ProductEntity(id:$id,name:$name,description:$description,comments:$comments,imgUrl:$imgUrl,price:$price)";
}
