import 'package:flutter/material.dart';

import '../../../../share/utils/mrnt_color.dart';
import '../../../components/components.dart';
import '../../../helpers/helpers.dart';

class SavedChangeAlert {
  Function()? onPressed;
  void showPopup(BuildContext context, Function()? onPressed) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Headline(
              text: R.string.savedChanges,
              color: MrntColors.onSurface,
              fontSize: 24.0,
              fontWeight: FontWeight.w600),
          content: Headline(
              text: R.string.updatedSuccessfully,
              color: MrntColors.onSurfaceVar,
              fontSize: 14.0,
              fontWeight: FontWeight.w400),
          actions: [
            TextButton(
              onPressed: onPressed,
              child: Headline(
                  text: R.string.backToProfile,
                  color: MrntColors.primary,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600),
            ),
          ],
        );
      },
    );
  }
}
