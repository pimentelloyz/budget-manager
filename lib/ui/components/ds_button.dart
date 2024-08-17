import 'package:flutter/material.dart';

import '../../share/utils/mrnt_color.dart';

class DSButton extends StatelessWidget {
  const DSButton({
    super.key,
    required this.style,
    required this.onPressed,
    required this.title,
  });

  final DSButtonStyle style;
  final void Function()? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: style == DSButtonStyle.primary
              ? MrntColors.primary
              : Theme.of(context).splashColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: style == DSButtonStyle.primary
                ? Colors.white
                : Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}

enum DSButtonStyle { primary, seccundary }
