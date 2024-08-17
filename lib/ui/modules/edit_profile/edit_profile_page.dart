import 'package:flutter/material.dart';

import '../../../share/utils/mrnt_color.dart';
import '../../components/components.dart';
import '../../helpers/helpers.dart';
import '../../mixins/navigation_manager.dart';
import '../modules.dart';
import 'components/components.dart';

class EditProfilePage extends StatelessWidget with NavigationManager {
  final EditProfilePresenter presenter;

  const EditProfilePage({
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
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Align(
            alignment: Alignment.topLeft,
            child: Headline(
              text: R.string.editProfile,
              color: MrntColors.onSurface,
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Image.asset(
                        'lib/ui/assets/images/profile.png',
                        fit: BoxFit.contain,
                        height: 96.0,
                        width: 96.0,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Headline(
                          text: R.string.changePhoto,
                          color: MrntColors.primary,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 32.0, bottom: 20.0),
                      child: ChangeEmailInput(),
                    ),
                    const ChangePhoneInput(),
                  ],
                ),
              ),
              DSButton(
                style: DSButtonStyle.primary,
                onPressed: () {
                  SavedChangeAlert().showPopup(
                    context,
                    presenter.goToProfile,
                  );
                },
                title: R.string.saveEditions,
              ),
            ],
          ),
        ),
      );
    });
  }
}
