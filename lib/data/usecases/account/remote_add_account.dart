import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/account/add_account.dart';
import '../../http/http.dart';
import '../../supabase/supabase_client.dart';

class RemoteAddAccount implements AddAccount {
  final SupabaseDbClient httpClient;

  RemoteAddAccount({
    required this.httpClient,
  });

  @override
  Future<void> add(AddAccountParams params) async {
    try {
      return await httpClient.insert(tableName: 'user', item: params.toMap());
    } on HttpError catch (error) {
      switch (error) {
        case HttpError.unauthorized:
          throw DomainError.invalidCredentials;
        case HttpError.notFound:
          throw DomainError.invalidCredentials;
        default:
          throw DomainError.unexpected;
      }
    }
  }
}
