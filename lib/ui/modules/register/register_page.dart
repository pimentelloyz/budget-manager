import 'package:flutter/material.dart';

import '../../../share/utils/mrnt_color.dart';
import '../../components/components.dart';
import '../../helpers/helpers.dart';
import '../../mixins/navigation_manager.dart';
import '../modules.dart';

class RegisterPage extends StatelessWidget with NavigationManager {
  final RegisterPresenter presenter;

  const RegisterPage({
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
              onPressed: () => Navigator.of(context).pop,
              icon: const Icon(Icons.arrow_back_ios)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Headline(
                        text: R.string.enterYourDetails,
                        color: MrntColors.onSurface,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60.0, bottom: 16.0),
                      child: NameInput(
                        presenter: presenter,
                      ),
                    ),
                    RegisterEmailInput(
                      presenter: presenter,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: PhoneInput(presenter: presenter),
                    ),
                    GenderInput(presenter: presenter),
                    //
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: DSButton(
                  style: DSButtonStyle.primary,
                  onPressed: presenter.add,
                  title: R.string.proceed,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
