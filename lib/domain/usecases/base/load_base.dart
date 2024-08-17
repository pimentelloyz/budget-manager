import '../../entities/base/base_entity.dart';

abstract class LoadBase {
  Future<BaseEntity> load();
}
