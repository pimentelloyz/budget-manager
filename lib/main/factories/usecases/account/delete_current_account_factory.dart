import '../../../../data/usecases/account/local_delete_current_account.dart';
import '../../../../domain/usecases/account/delete_current_account.dart';
import '../../factories.dart';

DeleteCurrentAccount makeLocalDeleteCurrentAccount() =>
    LocalDeleteCurrentAccount(
        sharedPreferencesStorage: makeSharedPreferencesStorageAdapter());
