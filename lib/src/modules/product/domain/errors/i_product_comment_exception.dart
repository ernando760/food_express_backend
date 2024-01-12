abstract class IProductCommentException {
  final String messageError;
  final String label;
  final StackTrace? stackTrace;

  IProductCommentException(
      {required this.messageError, required this.label, this.stackTrace});
}

class GetAllProductCommentsException extends IProductCommentException {
  GetAllProductCommentsException(
      {required super.messageError, required super.label, super.stackTrace});
}

class AddProductCommentException extends IProductCommentException {
  AddProductCommentException(
      {required super.messageError, required super.label, super.stackTrace});
}

class DeleteProductCommentException extends IProductCommentException {
  DeleteProductCommentException(
      {required super.messageError, required super.label, super.stackTrace});
}

class UpdateProductCommentException extends IProductCommentException {
  UpdateProductCommentException(
      {required super.messageError, required super.label, super.stackTrace});
}

class ProductCommentUnknowException extends IProductCommentException {
  ProductCommentUnknowException(
      {required super.messageError, required super.label, super.stackTrace});
}
