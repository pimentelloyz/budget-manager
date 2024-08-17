import '../../entities/entities.dart';

abstract class LoadSearchBase {
  Future<SearchBaseEntity> load();
}
