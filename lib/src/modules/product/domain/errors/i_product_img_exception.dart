abstract class IProductImgException {
  final String messageError;
  final String label;
  final StackTrace? stackTrace;

  IProductImgException(
      {required this.messageError,
      required this.label,
      required this.stackTrace});
}

class AddProductImgException extends IProductImgException {
  AddProductImgException(
      {required super.messageError, required super.label, super.stackTrace});
}

class GetProductImgException extends IProductImgException {
  GetProductImgException(
      {required super.messageError, required super.label, super.stackTrace});
}

class DeleteProductImgException extends IProductImgException {
  DeleteProductImgException(
      {required super.messageError, required super.label, super.stackTrace});
}

class UpdateProductImgException extends IProductImgException {
  UpdateProductImgException(
      {required super.messageError, required super.label, super.stackTrace});
}
