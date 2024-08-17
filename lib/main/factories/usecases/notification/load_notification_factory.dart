import '../../../../data/usecases/notification/remote_load_notification.dart';
import '../../../../domain/usecases/usecases.dart';
import '../../http/http.dart';

LoadNotification makeRemoteLoadNotification() => RemoteLoadNotification(
    httpClient: makeAuthorizeHttpClientDecorator(),
    url: makeApiUrl('register/'));
