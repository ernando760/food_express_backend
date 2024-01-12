import 'dart:io';

import '../errors/i_local_storage_exception.dart';
import '../i_storage.dart';

class LocalStorage extends IStorage {
  @override
  Future<({ILocalStorageException? exception, File? file})> createFile(
      String path) async {
    try {
      final (file: _, :exception) = await getFile(path);

      if (exception != null) {
        return (
          file: null,
          exception: CreateFileException(
              messageError:
                  "O arquivo $path não foi criado => ${exception.messageError}",
              label: "$runtimeType-createFile => ${exception.label}")
        );
      }
      final createFile = await File(path).create();
      return (file: createFile, exception: null);
    } catch (e, s) {
      return (
        file: null,
        exception: CreateFileException(
            messageError: "Error ao criar o arquivo => $e",
            label: "$runtimeType-createFile",
            stackTrace: s)
      );
    }
  }

  @override
  Future<({ILocalStorageException? exception, String? message})> deleteFile(
      String path) async {
    try {
      final (:file, :exception) = await getFile(path);
      if (file == null) {
        return (
          message: "O Arquivo $path não foi encontrado",
          exception: exception
        );
      }

      await file.delete();
      return (message: "O Arquivo $path foi deletado", exception: null);
    } catch (e, s) {
      return (
        message: null,
        exception: DeleteFileException(
            messageError: "Error ao deletar o arquivo $path =>  $e",
            label: "$runtimeType-deleteFile",
            stackTrace: s)
      );
    }
  }

  @override
  Future<({ILocalStorageException? exception, File? file})> getFile(
      String path) async {
    try {
      final file = File(path);

      if (await file.exists()) {
        return (file: file, exception: null);
      }
      return (
        file: null,
        exception: GetFileException(
            messageError: "O arquivo $path não foi encontrado",
            label: "$runtimeType-getFile")
      );
    } catch (e, s) {
      return (
        file: null,
        exception: GetFileException(
            messageError: "Error ao obter o arquivo $path => $e",
            label: "$runtimeType-getFile",
            stackTrace: s)
      );
    }
  }

  @override
  Future<({ILocalStorageException? exception, File? file})> updateFile(
      {required String newPath, required String oldPath}) async {
    try {
      final (message: _, exception: deleteException) =
          await deleteFile(oldPath);
      final (:file, :exception) = await createFile(newPath);

      if (exception != null || deleteException != null) {
        return (
          file: null,
          exception: UpdateFileException(
              messageError:
                  "Não foi possivel atualizar o arquivo $oldPath => Delete exception: ${deleteException?.messageError} \n Create exception: ${exception?.messageError}",
              label: "$runtimeType-updateFile",
              stackTrace: StackTrace.current)
        );
      }

      return (file: file, exception: null);
    } catch (e, s) {
      return (
        file: null,
        exception: UpdateFileException(
            messageError: "Error ao atualizar o arquivo $oldPath => $e",
            label: "$runtimeType-updateFile",
            stackTrace: s)
      );
    }
  }
}
