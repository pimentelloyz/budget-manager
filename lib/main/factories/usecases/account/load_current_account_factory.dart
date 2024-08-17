import '../../../../data/usecases/account/local_load_current_account.dart';
import '../../../../domain/usecases/account/load_current_account.dart';
import '../../factories.dart';

LoadCurrentAccount makeLocalLoadCurrentAccount() => LocalLoadCurrentAccount(
    sharedPreferencesStorage: makeSharedPreferencesStorageAdapter());
