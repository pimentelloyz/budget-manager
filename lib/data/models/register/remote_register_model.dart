import '../../../domain/entities/register/register_entity.dart';
import '../../http/http.dart';

class RemoteRegisterModel {
  final String title;
  final String image;

  RemoteRegisterModel({
    required this.title,
    required this.image,
  });

  factory RemoteRegisterModel.fromJson(Map json) {
    if (!json.containsKey('success')) {
      throw HttpError.invalidData;
    }
    return RemoteRegisterModel(
      title: json['title'],
      image: json['image'],
    );
  }

  RegisterEntity toEntity() => RegisterEntity(
        title: title,
        image: image,
      );

  factory RemoteRegisterModel.fromEntity(RegisterEntity entity) =>
      RemoteRegisterModel(
        title: entity.title,
        image: entity.image,
      );
}
