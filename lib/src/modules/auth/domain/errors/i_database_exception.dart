abstract class IDatabaseException {
  final String messageError;
  final String label;
  final StackTrace? stackTrace;

  IDatabaseException(
      {required this.messageError, required this.label, this.stackTrace});
}

class OpenDatabaseException extends IDatabaseException {
  OpenDatabaseException(
      {required super.messageError, required super.label, super.stackTrace});
}

class QueryDatabaseException extends IDatabaseException {
  QueryDatabaseException(
      {required super.messageError, required super.label, super.stackTrace});
}

class ExecuteDatabaseException extends IDatabaseException {
  ExecuteDatabaseException(
      {required super.messageError, required super.label, super.stackTrace});
}
