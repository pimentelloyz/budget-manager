import '../../../presentation/mixins/mixins.dart';
import '../../helpers/helpers.dart';
import '../../mixins/mixins.dart';

abstract class LoginPresenter {
  Stream<UIError?> get emailStream;
  Stream<UIError?> get passwordStream;
  Stream<UIError?> get mainErrorStream;
  Stream<NavigationData?> get navigateToStream;
  Stream<bool> get isFormValidStream;
  Stream<LoadingData?> get isLoadingStream;

  void validatePassword(String password);
  void validateEmail(String password);
  Future<void> auth();
  void goToNutrition();
  void goToRegister();
}
