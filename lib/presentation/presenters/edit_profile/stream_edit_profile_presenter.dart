import '../../../main/routes/routes.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/edit_profile/edit_profile_presenter.dart';
import '../../mixins/mixins.dart';

class StreamEditProfilePresenter
    with NavigationManager
    implements EditProfilePresenter {
  @override
  void goToProfile() {
    navigateTo = NavigationData(route: Routes.profile, clear: false);
  }
}
