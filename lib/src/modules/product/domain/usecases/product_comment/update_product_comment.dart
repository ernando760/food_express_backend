import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_comment_repository.dart';

class UpdateProductComment {
  final IProductCommentRepository _repository;

  UpdateProductComment(this._repository);

  Future<({String? message, IProductCommentException? exception})> call(
      String? productCommentId, ProductCommentDto productCommentDto) async {
    if (productCommentId != null) {
      return await _repository.updateProductComment(
          productCommentId, productCommentDto);
    }
    return (
      message: null,
      exception: ProductCommentUnknowException(
          messageError: "Error: o id comentario do produto está vazio.",
          label: "$runtimeType-call")
    );
  }
}
