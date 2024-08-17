import '../../../main/routes/routes_app.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/modules.dart';
import '../../mixins/mixins.dart';

class StreamLoginRequiredPresenter
    with NavigationManager
    implements LoginRequiredPresenter {
  @override
  void goToLogin() {
    navigateTo = NavigationData(route: Routes.login, clear: false);
  }

  @override
  void goToNutrition() {
    navigateTo = NavigationData(route: Routes.nutrition, clear: false);
  }
}
