import '../../../../data/usecases/account/remote_add_account.dart';
import '../../../../domain/usecases/account/add_account.dart';
import '../../supabase/supabase.dart';

AddAccount makeRemoteAddAccount() => RemoteAddAccount(
      httpClient: makeSupabaseDbClient(),
    );
