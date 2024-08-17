import '../../../domain/entities/notification/notification_entity.dart';
import '../../../domain/helpers/helpers.dart';
import '../../../domain/usecases/notification/load_notification.dart';
import '../../http/http.dart';
import '../../models/notification/remote_notification_model.dart';

class RemoteLoadNotification implements LoadNotification {
  final String url;
  final HttpClient httpClient;

  RemoteLoadNotification({required this.url, required this.httpClient});

  @override
  Future<NotificationEntity> load() async {
    try {
      final httpResponse =
          await httpClient.request(url: url, method: HttpMethod.get);
      return RemoteNotificationModel.fromJson(httpResponse).toEntity();
    } on HttpError catch (error) {
      throw error == HttpError.unauthorized
          ? DomainError.accessDenied
          : DomainError.unexpected;
    }
  }
}
