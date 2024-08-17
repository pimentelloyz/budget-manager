import '../../../domain/entities/entities.dart';
import '../../http/http.dart';

class RemoteEditProfileModel {
  final String title;
  final String image;

  RemoteEditProfileModel({
    required this.title,
    required this.image,
  });

  factory RemoteEditProfileModel.fromJson(Map json) {
    if (!json.containsKey('success')) {
      throw HttpError.invalidData;
    }
    return RemoteEditProfileModel(
      title: json['title'],
      image: json['image'],
    );
  }

  EditProfileEntity toEntity() => EditProfileEntity(
        title: title,
        image: image,
      );

  factory RemoteEditProfileModel.fromEntity(EditProfileEntity entity) =>
      RemoteEditProfileModel(
        title: entity.title,
        image: entity.image,
      );
}
