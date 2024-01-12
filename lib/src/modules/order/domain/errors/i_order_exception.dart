abstract class IOrderException {
  final String messageError;
  final String label;
  final StackTrace? stackTrace;

  IOrderException(
      {required this.messageError, required this.label, this.stackTrace});
}

class AddOrderException extends IOrderException {
  AddOrderException(
      {required super.messageError, required super.label, super.stackTrace});
}

class CompleteOrderException extends IOrderException {
  CompleteOrderException(
      {required super.messageError, required super.label, super.stackTrace});
}

class CancelOrderException extends IOrderException {
  CancelOrderException(
      {required super.messageError, required super.label, super.stackTrace});
}

class OrderUnknowException extends IOrderException {
  OrderUnknowException(
      {required super.messageError, required super.label, super.stackTrace});
}
