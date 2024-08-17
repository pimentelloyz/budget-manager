import '../../entities/entities.dart';

abstract class LoadMemberInfo {
  Future<MemberInfoEntity> load();
}
