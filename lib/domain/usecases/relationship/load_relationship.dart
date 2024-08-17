import '../../entities/relationship/relationship_entity.dart';

abstract class LoadRelationship {
  Future<RelationshipEntity> load();
}
