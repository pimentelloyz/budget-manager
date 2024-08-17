import '../../mixins/mixins.dart';

abstract class LoginRequiredPresenter {
  Stream<NavigationData?> get navigateToStream;

  void goToLogin();
  void goToNutrition();
}
