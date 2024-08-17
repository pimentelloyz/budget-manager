import 'dart:async';

import '../../../presentation/mixins/loading_manager.dart';
import '../../helpers/errors/ui_error.dart';
import '../../mixins/mixins.dart';

abstract class RegisterPresenter {
  StreamController<UIError?> get nameStream;
  StreamController<UIError?> get emailStream;
  StreamController<UIError?> get phoneStream;
  StreamController<UIError?> get genderStream;
  Stream<UIError?> get mainErrorStream;
  Stream<bool> get isFormValidStream;
  Stream<LoadingData?> get isLoadingStream;
  Stream<NavigationData?> get navigateToStream;

  void goToBaseCode();
  Future<void> add();
  void validateName(String name);
  void validateEmail(String email);
  void validatePhone(String phone);
  void validateGender(String gender);
  void dispose();
}
