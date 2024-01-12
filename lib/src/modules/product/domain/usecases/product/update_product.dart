import 'package:delivery_project_using_clean_code/src/modules/product/domain/entities/dto/product_dto.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/errors/i_product_exception.dart';
import 'package:delivery_project_using_clean_code/src/modules/product/domain/repositories/i_product_repository.dart';

class UpdateProduct {
  final IProductRepository _repository;

  UpdateProduct(this._repository);

  Future<({String? message, IProductException? exception})> call(
      String? id, ProductDto productDto) async {
    if (id != null) {
      if (productDto.name.isNotEmpty && productDto.description.isNotEmpty) {
        return await _repository.updateProduct(id, productDto);
      }
      return (
        message: null,
        exception: ProductUnknowException(
            messageError: "O nome e a descrição do produto está vazio",
            label: "$runtimeType-call")
      );
    }
    return (
      message: null,
      exception: ProductUnknowException(
          messageError: "O id não existe, está vazio",
          label: "$runtimeType-call")
    );
  }
}
