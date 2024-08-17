import 'package:flutter/material.dart';

import '../../../../ui/modules/onboarding/onboarding_page.dart';
import '../../factories.dart';

Widget makeOnboardingPage() =>
    OnboardingPage(presenter: makeOnboardingPresenter());
