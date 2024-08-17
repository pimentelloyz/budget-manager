import '../../../../presentation/presenters/register/stream_register_presenter.dart';
import '../../../../ui/modules/register/register_presenter.dart';
import '../../usecases/account/add_account_factory.dart';
import '../pages.dart';

RegisterPresenter makeRegisterPresenter() => StreamRegisterPresenter(
      addAccount: makeRemoteAddAccount(),
      validation: makeAddAccountValidation(),
    );
