import 'package:flutter/material.dart';

import '../../../share/ds/ds_logo.dart';
import '../../mixins/mixins.dart';
import './splash.dart';

class SplashPage extends StatelessWidget with NavigationManager {
  final SplashPresenter presenter;

  SplashPage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    presenter.checkAccount();

    return Material(
      child: Builder(
        builder: (context) {
          handleNavigation(presenter.navigateToStream);
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/ui/assets/images/background_splash.png'),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: DSLogo(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
