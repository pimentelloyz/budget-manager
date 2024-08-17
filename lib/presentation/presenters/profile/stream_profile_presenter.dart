import '../../../main/routes/routes.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/modules.dart';
import '../../mixins/mixins.dart';

class StreamProfilePresenter
    with NavigationManager
    implements ProfilePresenter {
  @override
  void goToChangePassword() {
    navigateTo = NavigationData(route: Routes.changePassword, clear: false);
  }

  @override
  void goToEditProfile() {
    navigateTo = NavigationData(route: Routes.editProfile, clear: false);
  }
}
