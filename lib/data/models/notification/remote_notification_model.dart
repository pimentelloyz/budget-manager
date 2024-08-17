import '../../../domain/entities/notification/notification_entity.dart';
import '../../http/http.dart';

class RemoteNotificationModel {
  final String title;
  final String image;

  RemoteNotificationModel({
    required this.title,
    required this.image,
  });

  factory RemoteNotificationModel.fromJson(Map json) {
    if (!json.containsKey('success')) {
      throw HttpError.invalidData;
    }
    return RemoteNotificationModel(
      title: json['title'],
      image: json['image'],
    );
  }

  NotificationEntity toEntity() => NotificationEntity(
        title: title,
        image: image,
      );

  factory RemoteNotificationModel.fromEntity(NotificationEntity entity) =>
      RemoteNotificationModel(
        title: entity.title,
        image: entity.image,
      );
}
