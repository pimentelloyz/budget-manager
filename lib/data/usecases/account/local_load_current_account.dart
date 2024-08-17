import 'dart:convert';

import '../../../domain/entities/account/account_entity.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/account/load_current_account.dart';
import '../../cache/cache.dart';
import '../../models/models.dart';

class LocalLoadCurrentAccount implements LoadCurrentAccount {
  final SharedPreferencesStorage sharedPreferencesStorage;

  LocalLoadCurrentAccount({
    required this.sharedPreferencesStorage,
  });

  @override
  Future<AccountEntity> load() async {
    try {
      final data =
          await sharedPreferencesStorage.fetch(SecureStorageKey.account);
      if (data == null) throw Error();
      final model = RemoteAccountModel.fromJson(jsonDecode(data)).toEntity();
      return model;
    } catch (error) {
      throw DomainError.unexpected;
    }
  }
}
