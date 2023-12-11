import 'dart:io';

import 'package:delivery_project_using_clean_code/core/utils/dot_env_util.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/database/i_database.dart';
import 'package:delivery_project_using_clean_code/modules/auth/domain/errors/i_database_exception.dart';
import 'package:postgresql2/postgresql.dart';

class PostgresDatabase extends IDatabase {
  Connection? _connection;

  @override
  Future<void> openDatabase() async {
    try {
      _connection = await connect(DotEnvUtil.env["POSTGRES_URI"] ?? "");
    } on PostgresqlException catch (e, s) {
      throw OpenDatabaseException(
          messageError: e.message,
          label: "$runtimeType-openDatabase",
          stackTrace: s);
    } on SocketException catch (e, s) {
      throw OpenDatabaseException(
          messageError: e.message,
          label: "$runtimeType-openDatabase",
          stackTrace: s);
    } catch (e, s) {
      throw OpenDatabaseException(
          messageError: "Error ao conectar no banco de dados $e",
          label: "$runtimeType-openDatabase",
          stackTrace: s);
    }
  }

  @override
  Future<List<Map<dynamic, dynamic>>> query(String path,
      [dynamic values]) async {
    try {
      final query = _connection?.query(path, values);
      final rows =
          await query?.asBroadcastStream().map((row) => row.toMap()).toList();
      return rows ?? [];
    } on PostgresqlException catch (e, s) {
      throw QueryDatabaseException(
          messageError: e.message, label: "$runtimeType-query", stackTrace: s);
    } on SocketException catch (e, s) {
      throw OpenDatabaseException(
          messageError: e.message, label: "$runtimeType-query", stackTrace: s);
    } catch (e, s) {
      throw QueryDatabaseException(
          messageError: "Error ao solicitar no banco de dados $e",
          label: "$runtimeType-query",
          stackTrace: s);
    }
  }

  @override
  void closeDatabase() => _connection?.close();

  @override
  Future<int> execute(String path, [values]) async {
    try {
      final res = await _connection?.execute(path, values);
      return res ?? 0;
    } on SocketException catch (e, s) {
      throw OpenDatabaseException(
          messageError: e.message,
          label: "$runtimeType-execute",
          stackTrace: s);
    } on PostgresqlException catch (e, s) {
      throw ExecuteDatabaseException(
          messageError: e.message,
          label: "$runtimeType-execute",
          stackTrace: s);
    } catch (e, s) {
      throw ExecuteDatabaseException(
          messageError: "ERROR ao executar no banco de dados $e",
          label: "$runtimeType-execute",
          stackTrace: s);
    }
  }
}
