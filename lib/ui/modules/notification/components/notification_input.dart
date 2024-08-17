import 'package:flutter/material.dart';

import '../../../components/components.dart';
import '../../../helpers/helpers.dart';

class NotificationInput extends StatelessWidget {
  const NotificationInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.info_outline,
                  color: Color.fromARGB(255, 1, 59, 174),
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Headline(
                    text: R.string.notificationInputTitle,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    textAlign: TextAlign.center,
                  ),
                ),
                Headline(
                  text: R.string.notificationInputSubtitle,
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14.0,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
