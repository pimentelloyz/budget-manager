import '../../../../presentation/presenters/splash/stream_splash_presenter.dart';
import '../../../../ui/modules/splash/splash_presenter.dart';
import '../../factories.dart';

SplashPresenter makeSplashPresenter() => StreamSplashPresenter(
      loadCurrentAccount: makeLocalLoadCurrentAccount(),
    );
