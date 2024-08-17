import 'package:flutter/material.dart';

import '../../components/components.dart';
import '../../helpers/helpers.dart';
import '../../mixins/navigation_manager.dart';
import '../modules.dart';

class LoginRequiredPage extends StatelessWidget with NavigationManager {
  final LoginRequiredPresenter presenter;

  LoginRequiredPage({super.key, required this.presenter});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        handleNavigation(presenter.navigateToStream);
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                R.string.loginRequired,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    const Icon(
                      Icons.info_outline,
                      color: Color.fromARGB(255, 1, 59, 174),
                      size: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Headline(
                        text: R.string.needToLogin,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Headline(
                      text: R.string.loginRequiredSubtitle,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: DSButton(
                      style: DSButtonStyle.primary,
                      onPressed: presenter.goToLogin,
                      title: R.string.toDoLogin,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
