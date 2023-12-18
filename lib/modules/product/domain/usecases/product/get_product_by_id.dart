import 'package:delivery_project_using_clean_code/modules/product/domain/entities/product_entity.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/modules/product/domain/repositories/i_product_repository.dart';

class GetProductById {
  final IProductRepository _repository;

  GetProductById(this._repository);

  Future<({ProductEntity? product, IProductException? exception})> call(
      String? id) async {
    if (id != null) {
      return await _repository.getProductById(id);
    }
    return (
      product: null,
      exception: ProductUnknowException(
          messageError: "O id não existe, está vazio",
          label: "$runtimeType-call")
    );
  }
}
