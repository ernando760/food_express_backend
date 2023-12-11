abstract class IDatabase {
  Future<void> openDatabase();
  Future<List<Map<dynamic, dynamic>>> query(String path, [dynamic values]);
  Future<int> execute(String path, [dynamic values]);
  void closeDatabase();
}
