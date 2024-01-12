abstract class ILocalStorageException {
  String messageError;
  String label;
  StackTrace? stackTrace;
  ILocalStorageException(
      {required this.messageError, required this.label, this.stackTrace});
}

class GetFileException extends ILocalStorageException {
  GetFileException(
      {required super.messageError, required super.label, super.stackTrace});
}

class CreateFileException extends ILocalStorageException {
  CreateFileException(
      {required super.messageError, required super.label, super.stackTrace});
}

class DeleteFileException extends ILocalStorageException {
  DeleteFileException(
      {required super.messageError, required super.label, super.stackTrace});
}

class UpdateFileException extends ILocalStorageException {
  UpdateFileException(
      {required super.messageError, required super.label, super.stackTrace});
}

class FileUnknowException extends ILocalStorageException {
  FileUnknowException(
      {required super.messageError, required super.label, super.stackTrace});
}
