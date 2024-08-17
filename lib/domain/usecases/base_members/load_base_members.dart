import '../../entities/base_members/base_members_entity.dart';

abstract class LoadBaseMembers {
  Future<BaseMembersEntity> load();
}
