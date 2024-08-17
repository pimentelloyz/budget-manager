import '../../../domain/entities/profile/profile_entity.dart';
import '../../http/http.dart';

class RemoteProfileModel {
  final String title;
  final String image;

  RemoteProfileModel({
    required this.title,
    required this.image,
  });

  factory RemoteProfileModel.fromJson(Map json) {
    if (!json.containsKey('success')) {
      throw HttpError.invalidData;
    }
    return RemoteProfileModel(
      title: json['title'],
      image: json['image'],
    );
  }

  ProfileEntity toEntity() => ProfileEntity(
        title: title,
        image: image,
      );

  factory RemoteProfileModel.fromEntity(ProfileEntity entity) =>
      RemoteProfileModel(
        title: entity.title,
        image: entity.image,
      );
}
