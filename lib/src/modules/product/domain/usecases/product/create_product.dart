import '../../entities/dto/product_dto.dart';
import '../../errors/i_product_exception.dart';
import '../../repositories/i_product_repository.dart';

class CreateProduct {
  final IProductRepository _repository;

  CreateProduct(this._repository);

  Future<({String? message, IProductException? exception})> call(
      ProductDto productDto) async {
    if (productDto.name.isNotEmpty && productDto.description.isNotEmpty) {
      return await _repository.createProduct(productDto);
    }
    return (
      message: null,
      exception: ProductUnknowException(
          messageError: "O nome e a descrição do produto está vazio",
          label: "$runtimeType-call")
    );
  }
}
