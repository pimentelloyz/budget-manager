import '../../entities/set_password/set_password_entity.dart';

abstract class LoadSetPassword {
  Future<SetPasswordEntity> load();
}
