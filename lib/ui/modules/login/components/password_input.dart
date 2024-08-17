import 'package:flutter/material.dart';

import '../../../../share/utils/mrnt_color.dart';
import '../../../helpers/helpers.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      color: Colors.transparent,
      child: TextFormField(
        decoration: InputDecoration(
          label: Text(
            R.string.password,
            style: const TextStyle(color: MrntColors.onSurfaceVar),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
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
          suffixIcon: IconButton(
            icon: const Icon(
              Icons.visibility_off,
              color: MrntColors.outline,
            ),
            onPressed: () {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
        ),
      ),
    );
  }
}
