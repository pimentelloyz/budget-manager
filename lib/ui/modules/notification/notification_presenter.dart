import '../../mixins/navigation_data.dart';

abstract class NotificationPresenter {
  Stream<NavigationData?> get navigateToStream;
}
