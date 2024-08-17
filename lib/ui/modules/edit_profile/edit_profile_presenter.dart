import '../../mixins/mixins.dart';

abstract class EditProfilePresenter {
  Stream<NavigationData?> get navigateToStream;

  void goToProfile();
}
