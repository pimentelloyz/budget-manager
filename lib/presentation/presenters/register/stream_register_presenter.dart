import 'dart:async';

import '../../../domain/entities/entities.dart';
import '../../../domain/usecases/account/add_account.dart';
import '../../../main/routes/routes.dart';
import '../../../ui/helpers/errors/ui_error.dart';
import '../../../ui/mixins/navigation_data.dart';
import '../../../ui/modules/register/register_presenter.dart';
import '../../mixins/mixins.dart';
import '../../protocols/validation.dart';

class StreamRegisterPresenter
    with LoadingManager, NavigationManager, FormManager, UIErrorManager
    implements RegisterPresenter {
  AddAccount addAccount;
  Validation validation;

  StreamRegisterPresenter({
    required this.addAccount,
    required this.validation,
  });

  String? _name;
  String? _email;
  String? _phone;
  String? _gender;

  UIError? _nameError;
  UIError? _emailError;
  UIError? _phoneError;
  UIError? _genderError;

  final _nameErrorController = StreamController<UIError?>.broadcast();
  final _emailErrorController = StreamController<UIError?>.broadcast();
  final _phoneErrorController = StreamController<UIError?>.broadcast();
  final _genderErrorController = StreamController<UIError?>.broadcast();

  @override
  StreamController<UIError?> get nameStream => _nameErrorController;
  @override
  StreamController<UIError?> get emailStream => _emailErrorController;
  @override
  StreamController<UIError?> get phoneStream => _phoneErrorController;
  @override
  StreamController<UIError?> get genderStream => _genderErrorController;

  @override
  void validateName(String name) {
    _name = name;
    _nameError = _validateField('name');

    _nameErrorController.add(_nameError);
    _validateForm();
  }

  @override
  void validateEmail(String email) {
    _email = email;
    _emailError = _validateField('email');
    _emailErrorController.add(_emailError);
    _validateForm();
  }

  @override
  void validatePhone(String phone) {
    _phone = phone;
    _phoneError = _validateField('phone');
    _phoneErrorController.add(_phoneError);
    _validateForm();
  }

  @override
  void validateGender(String gender) {
    _gender = gender;
    _genderError = _validateField('gender');
    _genderErrorController.add(_genderError);
    _validateForm();
  }

  UIError? _validateField(String field) {
    final formData = {
      'name': _name,
      'email': _email,
      'phone': _phone,
      'gender': _gender,
    };
    final error = validation.validate(field: field, input: formData);
    switch (error) {
      case ValidationError.invalidField:
        return UIError.invalidField;
      case ValidationError.requiredField:
        return UIError.requiredField;
      default:
        return null;
    }
  }

  void _validateForm() {
    isFormValid = _nameError == null &&
        _emailError == null &&
        _phoneError == null &&
        _genderError == null &&
        _name != null &&
        _email != null &&
        _phone != null &&
        _gender != null;
  }

  @override
  Future<void> add() async {
    try {
      final params = AddAccountParams(
          name: _name ?? '',
          email: _email ?? '',
          phone: _phone ?? '',
          gender: _gender ?? '',
          type: AccountType.j);
      await addAccount.add(params);
      goToBaseCode();
    } catch (e) {
      print(e);
    }
  }

  @override
  void goToBaseCode() {
    navigateTo = NavigationData(route: Routes.baseCode, clear: false);
  }

  @override
  void dispose() {
    nameStream.close();
    emailStream.close();
  }
}
