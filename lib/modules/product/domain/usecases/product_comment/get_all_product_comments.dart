import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_comment_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_comment_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_comment_repository.dart';

class GetAllProductComments {
  final IProductCommentRepository _repository;

  GetAllProductComments(this._repository);

  Future<
      ({
        List<ProductCommentEntity>? productComments,
        IProductCommentException? exception
      })> call(String? productId, [int limit = 10]) async {
    if (productId != null) {
      return await _repository.getAllProductComments(productId, limit);
    }

    return (
      productComments: null,
      exception: ProductCommentUnknowException(
          messageError: "Error o id do produto está nulo",
          label: "$runtimeType-call")
    );
  }
}
