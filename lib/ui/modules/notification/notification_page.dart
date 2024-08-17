import 'package:flutter/material.dart';

import '../../../share/utils/mrnt_color.dart';
import '../../components/headline.dart';
import '../../helpers/helpers.dart';
import '../../helpers/i18n/i18n.dart';
import '../../mixins/navigation_manager.dart';
import '../modules.dart';

class NotificationPage extends StatelessWidget with NavigationManager {
  final NotificationPresenter presenter;

  const NotificationPage({super.key, required this.presenter});

  get child => null;

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
            title: Align(
              alignment: Alignment.topLeft,
              child: Text(
                R.string.notificationTitle,
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          body: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6.0),
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 42.0,
                            height: 18.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.0),
                              border: Border.all(
                                width: 1.0,
                                color: MrntColors.outline,
                              ),
                              color: MrntColors.onSurface,
                            ),
                            child: const Center(
                              child: Headline(
                                text: 'link',
                                color: MrntColors.white,
                                fontSize: 9.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Headline(
                        text: R.string.newMission,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Headline(
                          text: R.string.newMissionAvailable,
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 212, 212, 212),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                      const Headline(
                        text: 'Parabéns, você fez 7 missões',
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 4.0),
                        child: Headline(
                          text:
                              'Você cumpriu 7 missões consecutivas. Continue para conquistar outros tipos de medalha.',
                          color: Colors.grey,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 212, 212, 212),
                      ),
                    ],
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
