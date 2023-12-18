import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_comment_entity.dart';

class CommentAdapter {
  static ProductCommentEntity fromJson(dynamic data) {
    return ProductCommentEntity(
        id: data["id"],
        productId: data["product_id"],
        email: data["email"],
        ratings: data["ratings"],
        username: data["username"],
        comment: data["comment"],
        createTime: data["create_time"]);
  }

  static Map<String, dynamic> toMap(ProductCommentEntity comment) {
    return {
      "id": comment.id,
      "product_id": comment.productId,
      "username": comment.username,
      "ratings": comment.ratings,
      "email": comment.email,
      "comment": comment.comment,
      "create_time": comment.createTime?.toLocal().toString()
    };
  }
}
