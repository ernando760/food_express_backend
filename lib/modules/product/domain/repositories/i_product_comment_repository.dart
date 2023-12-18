import 'package:delivery_project_using_clean_code/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_comment_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';

abstract class IProductCommentRepository {
  Future<
      ({
        List<ProductCommentEntity>? productComments,
        IProductCommentException? exception
      })> getAllProductComments(String productId, [limit = 10]);
  Future<({String? message, IProductCommentException? exception})>
      addProductComment(ProductCommentDto commentDto);
  Future<({String? message, IProductCommentException? exception})>
      removeProductComment(String? commentId);
  Future<({String? message, IProductCommentException? exception})>
      updateProductComment(String? commentId, ProductCommentDto newCommentDto);
}
