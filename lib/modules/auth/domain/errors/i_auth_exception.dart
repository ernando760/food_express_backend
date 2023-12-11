abstract class IAuthException {
  final String messageError;
  final String label;
  final StackTrace? stackTrace;

  IAuthException(
      {required this.messageError, required this.label, this.stackTrace});

  @override
  String toString() =>
      "$runtimeType(messageError:$messageError,label:$label,stackTrace:$stackTrace)";
}

class InvalidSignInException extends IAuthException {
  InvalidSignInException(
      {required super.messageError, required super.label, super.stackTrace});
}

class InvalidSignUpException extends IAuthException {
  InvalidSignUpException(
      {required super.messageError, required super.label, super.stackTrace});
}

class ExistingUserException extends IAuthException {
  ExistingUserException(
      {required super.messageError, required super.label, super.stackTrace});
}

class InvalidJWTException extends IAuthException {
  InvalidJWTException(
      {required super.messageError, required super.label, super.stackTrace});
}
