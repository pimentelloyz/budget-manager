import '../../entities/entities.dart';

abstract class LoadSearchMission {
  Future<SearchMissionEntity> load();
}
