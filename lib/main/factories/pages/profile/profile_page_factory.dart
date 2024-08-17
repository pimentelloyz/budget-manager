import 'package:flutter/material.dart';

import '../../../../ui/modules/profile/profile_page.dart';
import '../../factories.dart';

Widget makeProfilePage() => ProfilePage(presenter: makeProfilePresenter());
