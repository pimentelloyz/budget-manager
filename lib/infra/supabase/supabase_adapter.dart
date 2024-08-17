import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data/supabase/supabase_client.dart';

class SupabaseAdapter implements SupabaseDbClient {
  final SupabaseClient client;

  SupabaseAdapter({
    required this.client,
  });

  @override
  Future<dynamic> insert({
    required String tableName,
    required dynamic item,
  }) async {
    final data = await client.from(tableName).insert(item);
    return data;
  }

  @override
  Future<void> delete({
    required String tableName,
    required String id,
  }) async {
    return await client.from(tableName).delete().eq('id', id);
  }

  @override
  Future<dynamic> getBy({
    required String tableName,
    required String field,
    required String param,
  }) async {
    return await client.from(tableName).select().eq(field, param).single();
  }

  @override
  Future<List<dynamic>> getAll({
    required String tableName,
  }) async {
    return await client.from(tableName).select();
  }
}
