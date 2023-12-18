import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_comment_repository.dart';

class RemoveProductComment {
  final IProductCommentRepository _repository;

  RemoveProductComment(this._repository);

  Future<({String? message, IProductCommentException? exception})> call(
      String? productCommentId) async {
    if (productCommentId != null) {
      return await _repository.removeProductComment(productCommentId);
    }

    return (
      message: null,
      exception: ProductCommentUnknowException(
          messageError: "Erro: o id do comentario do produto está vazio.",
          label: "$runtimeType-call")
    );
  }
}
