import '../../entities/register/register_entity.dart';

abstract class LoadRegister {
  Future<RegisterEntity> load();
}
