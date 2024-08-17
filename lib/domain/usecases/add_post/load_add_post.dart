import '../../entities/add_post/add_post_entity.dart';

abstract class LoadAddPost {
  Future<AddPostEntity> load();
}
