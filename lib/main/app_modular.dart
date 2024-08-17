import 'package:flutter_modular/flutter_modular.dart';

import 'routes/routes.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: AuthModule(), transition: TransitionType.fadeIn);
  }
}
