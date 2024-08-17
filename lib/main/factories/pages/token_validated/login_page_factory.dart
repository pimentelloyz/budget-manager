import 'package:flutter/material.dart';

import '../../../../ui/modules/login/login.dart';
import '../../factories.dart';

Widget makeLoginPage() => LoginPage(
      presenter: makeStreamLoginPresenter(),
    );
