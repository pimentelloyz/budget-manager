import '../../../domain/usecases/usecases.dart';
import '../../../main/routes/routes.dart';
import '../../../ui/helpers/helpers.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/login/login_presenter.dart';
import '../../mixins/mixins.dart';
import '../../protocols/protocols.dart';

class StreamLoginPresenter
    with LoadingManager, NavigationManager, FormManager, UIErrorManager
    implements LoginPresenter {
  final Validation validation;
  final Authentication authentication;
  final SaveCurrentAccount saveCurrentAccount;

  final Stream<UIError?> _passwordStream = const Stream.empty();
  final Stream<UIError?> _emailStream = const Stream.empty();
  final Stream<UIError?> _emailError = const Stream.empty();

  @override
  Stream<UIError?> get mainErrorStream => _emailError;
  @override
  Stream<UIError?> get passwordStream => _passwordStream;
  @override
  Stream<UIError?> get emailStream => _emailStream;

  StreamLoginPresenter({
    required this.validation,
    required this.authentication,
    required this.saveCurrentAccount,
  });

  @override
  Future<void> auth() {
    throw UnimplementedError();
  }

  @override
  void validateEmail(String password) {
    // TODO: implement validateEmail
  }

  @override
  void validatePassword(String password) {
    // TODO: implement validatePassword
  }

  @override
  void goToNutrition() {
    navigateTo = NavigationData(route: Routes.navBar, clear: true);
  }

  @override
  void goToRegister() {
    navigateTo = NavigationData(route: Routes.register, clear: true);
  }
}
