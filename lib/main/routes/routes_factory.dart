import 'package:flutter_modular/flutter_modular.dart';

import '../factories/pages/pages.dart';
import './routes_app.dart';

class AuthModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      Routes.splash,
      child: (_) => makeSplashPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.onboarding,
      child: (_) => makeOnboardingPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.login,
      child: (_) => makeLoginPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.register,
      child: (_) => makeRegisterPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.notification,
      child: (_) => makeNotificationPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.profile,
      child: (_) => makeProfilePage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.loginRequired,
      child: (_) => makeLoginRequiredPage(),
      transition: TransitionType.fadeIn,
    );
    r.child(
      Routes.editProfile,
      child: (_) => makeEditProfilePage(),
      transition: TransitionType.fadeIn,
    );
  }
}
