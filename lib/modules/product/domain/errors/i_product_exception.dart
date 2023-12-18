class IProductException {
  final String messageError;
  final String label;
  final StackTrace? stackTrace;

  IProductException(
      {required this.messageError, required this.label, this.stackTrace});
}

class GetAllProductsException extends IProductException {
  GetAllProductsException(
      {required super.messageError, required super.label, super.stackTrace});
}

class GetProductByIdException extends IProductException {
  GetProductByIdException(
      {required super.messageError, required super.label, super.stackTrace});
}

class CreateProductException extends IProductException {
  CreateProductException(
      {required super.messageError, required super.label, super.stackTrace});
}

class DeleteProductException extends IProductException {
  DeleteProductException(
      {required super.messageError, required super.label, super.stackTrace});
}

class UpdateProductException extends IProductException {
  UpdateProductException(
      {required super.messageError, required super.label, super.stackTrace});
}

class ProductUnknowException extends IProductException {
  ProductUnknowException(
      {required super.messageError, required super.label, super.stackTrace});
}
