import 'package:flutter/material.dart';

import '../../../../ui/modules/notification/notification_page.dart';
import '../../factories.dart';

Widget makeNotificationPage() =>
    NotificationPage(presenter: makeNotificationPresenter());
