import '../../entities/edit_profile/edit_profile_entity.dart';

abstract class LoadEditProfile {
  Future<EditProfileEntity> load();
}
