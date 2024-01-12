import 'package:delivery_project_using_clean_code/src/core/extensions/json_response_extension.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/adapters/comment_adapter.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/usecases/product_comment/add_product_comment.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/usecases/product_comment/get_all_product_comments.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/usecases/product_comment/remove_product_comment.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/usecases/product_comment/update_product_comment.dart';
import 'package:shelf/shelf.dart';

class ProductCommentController {
  final GetAllProductComments _getAllProductComments;
  final AddProductComment _addProductComment;
  final RemoveProductComment _removeProductComment;
  final UpdateProductComment _updateProductComment;

  ProductCommentController(this._getAllProductComments, this._addProductComment,
      this._removeProductComment, this._updateProductComment);

  Future<Response> getAllProductComments(String? productId,
      [int limits = 10]) async {
    final (:productComments, :exception) =
        await _getAllProductComments.call(productId, limits);

    if (exception != null) {
      return Response(401)
          .json({"status": 401, "messageError": exception.messageError});
    }

    if (productComments != null) {
      return Response(200).json(productComments
          .map((productComment) => CommentAdapter.toMap(productComment))
          .toList());
    }

    return Response.internalServerError();
  }

  Future<Response> addProductComment(String productId, dynamic data) async {
    final (:message, :exception) = await _addProductComment.call(
        ProductCommentDto(
            email: data["email"],
            productId: productId,
            ratings: (data["ratings"] as int).toDouble(),
            username: data["username"],
            comment: data["comment"]));

    if (exception != null) {
      return Response(401)
          .json({"status": 401, "messageError": exception.messageError});
    }

    if (message != null) {
      return Response(200).json({"status": 200, "message": message});
    }

    return Response.internalServerError();
  }

  Future<Response> removeProductComment(String? productCommentId) async {
    final (:message, :exception) =
        await _removeProductComment.call(productCommentId);

    if (exception != null) {
      return Response(401)
          .json({"status": 401, "messageError": exception.messageError});
    }

    if (message != null) {
      return Response(200).json({"status": 200, "message": message});
    }

    return Response.internalServerError();
  }

  Future<Response> updateProductComment(
      String? productCommentId, Map<String, dynamic> data) async {
    final (:message, :exception) = await _updateProductComment.call(
        productCommentId,
        ProductCommentDto(
            email: data["email"],
            productId: data["productId"],
            username: data["username"],
            ratings: data["ratings"],
            comment: data["comment"]));

    if (exception != null) {
      return Response(401)
          .json({"status": 401, "messageError": exception.messageError});
    }
    if (message != null) {
      return Response(200).json({"status": 200, "message": message});
    }

    return Response.internalServerError();
  }
}
