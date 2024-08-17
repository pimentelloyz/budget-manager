import '../../entities/mission/mission_entity.dart';

abstract class LoadMission {
  Future<List<MissionEntity>> load();
}
