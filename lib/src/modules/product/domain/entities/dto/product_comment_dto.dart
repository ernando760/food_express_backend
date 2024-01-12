import '../product_comment_entity.dart';

class ProductCommentDto extends ProductCommentEntity {
  ProductCommentDto(
      {super.id,
      required super.email,
      super.ratings,
      required super.productId,
      required super.username,
      required super.comment});
}
