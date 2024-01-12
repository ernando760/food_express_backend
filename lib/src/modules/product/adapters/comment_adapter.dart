import '../domain/entities/product_comment_entity.dart';

class CommentAdapter {
  static ProductCommentEntity fromJson(dynamic data) {
    return ProductCommentEntity(
        id: data["id"],
        productId: data["product_id"],
        email: data["email"],
        ratings: data["ratings"],
        username: data["username"],
        comment: data["comment"],
        created: data["created"]);
  }

  static Map<String, dynamic> toMap(ProductCommentEntity comment) {
    return {
      "id": comment.id,
      "product_id": comment.productId,
      "username": comment.username,
      "ratings": comment.ratings,
      "email": comment.email,
      "comment": comment.comment,
      "created": comment.created?.toLocal().toString()
    };
  }
}
