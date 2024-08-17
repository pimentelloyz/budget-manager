import '../../../domain/usecases/usecases.dart';
import '../../../main/routes/routes_app.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/splash/splash_presenter.dart';
import '../../mixins/mixins.dart';

class StreamSplashPresenter with NavigationManager implements SplashPresenter {
  final LoadCurrentAccount loadCurrentAccount;

  StreamSplashPresenter({
    required this.loadCurrentAccount,
  });

  @override
  Future<void> checkAccount({int durationInSeconds = 2}) async {
    await Future.delayed(Duration(seconds: durationInSeconds));
    try {
      final account = await loadCurrentAccount.load();
      if (account != null) {
        navigateTo = NavigationData(route: Routes.onboarding, clear: true);
      } else {
        navigateTo = NavigationData(route: Routes.login, clear: true);
      }
    } catch (error) {
      navigateTo = NavigationData(route: Routes.navBar, clear: true);
    }
  }
}
