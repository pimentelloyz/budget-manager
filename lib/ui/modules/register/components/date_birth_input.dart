import 'package:flutter/material.dart';

import '../../../../share/utils/mrnt_color.dart';
import '../../../helpers/helpers.dart';
import '../../modules.dart';

class DateBirthInput extends StatelessWidget {
  final RegisterPresenter presenter;

  const DateBirthInput({
    super.key,
    required this.presenter,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UIError?>(
        stream: null,
        builder: (context, snapshot) {
          return Container(
            height: 56,
            color: Colors.transparent,
            child: TextFormField(
              decoration: InputDecoration(
                label: Text(
                  R.string.dateBirth,
                  style: const TextStyle(color: MrntColors.onSurfaceVar),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: MrntColors.outline,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: MrntColors.outline,
                  ),
                ),
                errorText: snapshot.data?.description,
              ),
              keyboardType: TextInputType.text,
            ),
          );
        });
  }
}
