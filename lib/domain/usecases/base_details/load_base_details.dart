import '../../entities/entities.dart';

abstract class LoadBaseDetails {
  Future<BaseDetailsEntity> load();
}
