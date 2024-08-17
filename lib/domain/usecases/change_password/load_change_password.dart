import '../../entities/change_password/change_password.dart';

abstract class LoadChangePassword {
  Future<ChangePasswordEntity> load();
}
