import '../../../main/routes/routes.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/onboarding/onboarding_presenter.dart';
import '../../mixins/mixins.dart';

class StreamOnboardingPresenter
    with NavigationManager
    implements OnboardingPresenter {
  @override
  navigateToLogin() {
    navigateTo = NavigationData(
      route: Routes.login,
      clear: false,
    );
  }

  @override
  navigateToSignUp() {
    navigateTo = NavigationData(
      route: Routes.register,
      clear: false,
    );
  }
}
