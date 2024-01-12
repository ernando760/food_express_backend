import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_repository.dart';

class DeleteProduct {
  final IProductRepository _repository;

  DeleteProduct(this._repository);

  Future<({String? message, IProductException? exception})> call(
      String? id) async {
    if (id != null) return await _repository.deleteProduct(id);

    return (
      message: null,
      exception: ProductUnknowException(
          messageError: "O id não existe, está vazio",
          label: "$runtimeType-type")
    );
  }
}
