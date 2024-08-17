import 'package:flutter/material.dart';

import '../../../share/ds/ds_button.dart';
import '../../../share/ds/ds_logo.dart';
import '../../../share/utils/mrnt_color.dart';
import '../../helpers/helpers.dart';
import '../../mixins/navigation_manager.dart';
import '../modules.dart';

class OnboardingPage extends StatelessWidget with NavigationManager {
  final OnboardingPresenter presenter;

  const OnboardingPage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      handleNavigation(presenter.navigateToStream);

      return Material(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/ui/assets/images/background_init.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              const DSLogo(),
              const Expanded(
                flex: 1,
                child: SizedBox(),
              ),
              DSButton(
                label: R.string.login,
                labelWeight: FontWeight.bold,
                labelColor: MrntColors.white,
                onPressed: presenter.navigateToLogin,
                backgroundColor: MrntColors.secundaryContainer,
                margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              DSButton(
                label: R.string.register,
                labelWeight: FontWeight.bold,
                labelColor: MrntColors.primary,
                onPressed: presenter.navigateToSignUp,
                backgroundColor: MrntColors.white,
                margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                padding: const EdgeInsets.symmetric(vertical: 8),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      );
    });
  }
}
