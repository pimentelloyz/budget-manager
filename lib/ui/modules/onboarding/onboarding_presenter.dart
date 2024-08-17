import '../../mixins/mixins.dart';

abstract class OnboardingPresenter {
  Stream<NavigationData?> get navigateToStream;

  void navigateToLogin();
  void navigateToSignUp();
}
