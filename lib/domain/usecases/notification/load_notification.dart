import '../../entities/notification/notification_entity.dart';

abstract class LoadNotification {
  Future<NotificationEntity> load();
}
