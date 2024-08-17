import '../../../../data/usecases/account/local_save_current_account.dart';
import '../../../../domain/usecases/account/save_current_account.dart';
import '../../factories.dart';

SaveCurrentAccount makeLocalSaveCurrentAccount() => LocalSaveCurrentAccount(
    sharedPreferencesStorage: makeSharedPreferencesStorageAdapter());
