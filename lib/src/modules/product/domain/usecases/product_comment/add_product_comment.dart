import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/dto/product_comment_dto.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_comment_repository.dart';

class AddProductComment {
  final IProductCommentRepository _repository;

  AddProductComment(this._repository);

  Future<({String? message, IProductCommentException? exception})> call(
      ProductCommentDto productCommentDto) async {
    if (productCommentDto.productId.isNotEmpty) {
      return await _repository.addProductComment(productCommentDto);
    }
    return (
      message: null,
      exception: ProductCommentUnknowException(
          messageError: "Erro: O id do produto está vazio",
          label: "$runtimeType-call")
    );
  }
}
