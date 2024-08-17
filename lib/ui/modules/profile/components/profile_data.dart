import 'package:flutter/material.dart';

import '../../../../share/utils/mrnt_color.dart';
import '../../../components/components.dart';

class ProfileData extends StatelessWidget {
  final String name;
  final String data;

  const ProfileData({
    super.key,
    required this.name,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Headline(
          text: name,
          color: MrntColors.onSurface,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 16.0),
          child: Headline(
            text: data,
            color: MrntColors.onSurface,
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 16.0),
          child: Divider(),
        ),
      ],
    );
  }
}
