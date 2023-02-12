import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ds_model_theme.dart';

class DSThemeSwitcherButton extends StatelessWidget {
  const DSThemeSwitcherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DSModelTheme>(
      builder: (
        context,
        DSModelTheme themeNotifier,
        child,
      ) =>
          IconButton(
        icon: Icon(
          themeNotifier.isDark ? Icons.nightlight_round : Icons.wb_sunny,
        ),
        onPressed: () => themeNotifier.isDark
            ? themeNotifier.isDark = false
            : themeNotifier.isDark = true,
        tooltip: 'Tap to switch theme in real time',
      ),
    );
  }
}
