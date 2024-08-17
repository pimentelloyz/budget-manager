import '../../../../presentation/presenters/login/stream_login_presenter.dart';
import '../../../../ui/modules/login/login_presenter.dart';
import '../../factories.dart';

LoginPresenter makeStreamLoginPresenter() => StreamLoginPresenter(
      authentication: makeRemoteAuthentication(),
      validation: makeLoginValidation(),
      saveCurrentAccount: makeLocalSaveCurrentAccount(),
    );
