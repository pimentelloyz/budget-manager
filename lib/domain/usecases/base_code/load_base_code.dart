import '../../entities/base_code/base_code_entity.dart';

abstract class LoadBaseCode {
  Future<BaseCodeEntity> load({required String id});
}
