import 'package:flutter/material.dart';

import '../../../share/utils/mrnt_color.dart';
import '../../components/components.dart';
import '../../mixins/navigation_manager.dart';
import 'whatsApp_presenter.dart';

class WhatsAppPage extends StatelessWidget with NavigationManager {
  final WhatsAppPresenter presenter;

  const WhatsAppPage({
    super.key,
    required this.presenter,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      handleNavigation(presenter.navigateToStream);

      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Align(
            alignment: Alignment.topLeft,
            child: Headline(
              text: 'Arnaldo Lucas',
              color: MrntColors.onSurface,
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      );
    });
  }
}
