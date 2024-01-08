import 'dart:io';

import 'package:delivery_project_using_clean_code/core/storage/errors/i_local_storage_exception.dart';

abstract class IStorage {
  Future<({File? file, ILocalStorageException? exception})> getFile(
      String path);

  Future<({File? file, ILocalStorageException? exception})> createFile(
      String path);

  Future<({String? message, ILocalStorageException? exception})> deleteFile(
      String path);
  Future<({File? file, ILocalStorageException? exception})> updateFile(
      {required String newPath, required String oldPath});
}
