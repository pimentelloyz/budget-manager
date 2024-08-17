import 'package:flutter/material.dart';

import '../../../../ui/modules/register/register_page.dart';
import '../../factories.dart';

Widget makeRegisterPage() => RegisterPage(presenter: makeRegisterPresenter());
