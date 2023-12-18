class ProductCommentEntity {
  final String? id;
  final String email;
  final String productId;
  final String username;
  final double ratings;
  final String comment;
  final DateTime? createTime;
  ProductCommentEntity(
      {this.id,
      required this.email,
      required this.productId,
      this.ratings = 0,
      required this.username,
      required this.comment,
      this.createTime});

  @override
  String toString() =>
      "CommentEntity(id:$id,username:$username,email:$email,comment:$comment,createTime:$createTime)";
}
