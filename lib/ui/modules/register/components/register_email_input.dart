import 'package:flutter/material.dart';

import '../../../../share/utils/mrnt_color.dart';
import '../../../helpers/errors/ui_error.dart';
import '../register_presenter.dart';

class RegisterEmailInput extends StatelessWidget {
  final RegisterPresenter presenter;

  const RegisterEmailInput({
    required this.presenter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<UIError?>(
        stream: presenter.emailStream.stream,
        builder: (context, snapshot) {
          return Container(
            height: 56,
            color: Colors.transparent,
            child: TextFormField(
              decoration: InputDecoration(
                label: const Text(
                  'E-mail',
                  style: TextStyle(color: MrntColors.onSurfaceVar),
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
              keyboardType: TextInputType.emailAddress,
              onChanged: presenter.validateEmail,
            ),
          );
        });
  }
}
