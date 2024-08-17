abstract class SupabaseDbClient {
  Future<dynamic> insert({
    required String tableName,
    required dynamic item,
  });
  Future<void> delete({
    required String tableName,
    required String id,
  });
  Future<dynamic> getBy({
    required String tableName,
    required String field,
    required String param,
  });
  Future<List<dynamic>> getAll({
    required String tableName,
  });
}
