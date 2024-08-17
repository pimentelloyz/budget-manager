import 'package:flutter/material.dart';

import '../../../share/ds/ds_logo.dart';
import '../../../share/utils/mrnt_color.dart';
import '../../components/components.dart';
import '../../helpers/helpers.dart';
import '../../mixins/mixins.dart';
import '../modules.dart';
import 'components/components.dart';

class LoginPage extends StatelessWidget with NavigationManager {
  final LoginPresenter presenter;

  const LoginPage({
    super.key,
    required this.presenter,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      handleNavigation(presenter.navigateToStream);

      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const DSLogo(type: DSLogoType.black),
                    const Padding(
                      padding: EdgeInsets.only(top: 80.0, bottom: 16.0),
                      // child: EmailInput(),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: EmailInput(),
                    ),
                    const PasswordInput(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Headline(
                          text: R.string.noAccount,
                          color: MrntColors.secondary,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                        TextButton(
                            onPressed: presenter.goToRegister,
                            child: Headline(
                              text: R.string.registerNow,
                              color: MrntColors.primary,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                            ))
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: DSButton(
                  style: DSButtonStyle.primary,
                  onPressed: presenter.goToNutrition,
                  title: R.string.login,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
