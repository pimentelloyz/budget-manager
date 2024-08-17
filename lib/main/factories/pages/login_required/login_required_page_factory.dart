import 'package:flutter/material.dart';

import '../../../../ui/modules/login_required/login_required_page.dart';
import '../../factories.dart';

Widget makeLoginRequiredPage() =>
    LoginRequiredPage(presenter: makeLoginRequiredPresenter());
