import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../share/utils/mrnt_color.dart';
import '../../components/components.dart';
import '../../helpers/helpers.dart';
import '../../helpers/i18n/i18n.dart';
import '../../mixins/navigation_manager.dart';
import '../modules.dart';

class ProfilePage extends StatelessWidget with NavigationManager {
  final ProfilePresenter presenter;

  const ProfilePage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      handleNavigation(presenter.navigateToStream);

      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: Navigator.of(context).pop,
            icon: const Icon(Icons.arrow_back),
          ),
          title: Headline(
              text: R.string.myProfile,
              color: MrntColors.onSurface,
              fontSize: 22.0,
              fontWeight: FontWeight.w600),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: presenter.goToEditProfile,
                child: SvgPicture.asset(
                  'lib/ui/assets/images/icon/edit.svg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                child: Column(
                  children: [
                    Image.asset(
                      'lib/ui/assets/images/profile.png',
                      fit: BoxFit.contain,
                      height: 96.0,
                      width: 96.0,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4.0),
                      child: Headline(
                        text: 'Maria Eduarda',
                        color: MrntColors.onSurface,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Headline(
                      text: 'Base #0123456',
                      color: MrntColors.onSurface,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Headline(
                  text: R.string.personalData,
                  color: MrntColors.onSurface,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              ProfileData(name: R.string.name, data: 'Maria Eduarda Ribeiro'),
              ProfileData(name: R.string.email, data: 'email@email.com'),
              ProfileData(name: R.string.phone, data: '44 9 9999-9999'),
              ProfileData(name: R.string.baseLabel, data: '#0123456'),
              ProfileData(name: R.string.gender, data: 'Femenino'),
              IconButton(
                onPressed: presenter.goToChangePassword,
                icon: Row(
                  children: [
                    SvgPicture.asset(
                      'lib/ui/assets/images/icon/edit.svg',
                      fit: BoxFit.contain,
                      height: 16,
                      width: 16,
                      colorFilter: const ColorFilter.mode(
                          MrntColors.primary, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 8.0),
                    Headline(
                      text: R.string.changePassword,
                      color: MrntColors.primary,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  AlertDeleteAccount().showPopup(context, () {});
                },
                icon: Row(
                  children: [
                    SvgPicture.asset(
                      'lib/ui/assets/images/icon/delete.svg',
                      height: 16,
                      width: 16,
                      fit: BoxFit.contain,
                      colorFilter: const ColorFilter.mode(
                          MrntColors.primary, BlendMode.srcIn),
                    ),
                    const SizedBox(width: 8.0),
                    Headline(
                      text: R.string.deleteAccount,
                      color: MrntColors.primary,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
