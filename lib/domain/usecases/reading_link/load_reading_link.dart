import '../../entities/reading_link/reading_link_entity.dart';

abstract class LoadReadingLink {
  Future<ReadingLinkEntity> load();
}
