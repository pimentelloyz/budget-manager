import '../../entities/mission_details/mission_details_entity.dart';

abstract class LoadMissionDetails {
  Future<MissionDetailsEntity> load();
}
