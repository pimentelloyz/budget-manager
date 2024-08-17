import '../../mixins/mixins.dart';

abstract class ProfilePresenter {
  Stream<NavigationData?> get navigateToStream;

  void goToChangePassword();
  void goToEditProfile();
}
