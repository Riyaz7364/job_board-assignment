import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AdaptiveThemeToggle extends StatelessWidget {
  const AdaptiveThemeToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          if (AdaptiveTheme.of(context).mode.isDark) {
            AdaptiveTheme.of(context).setLight();
          } else {
            AdaptiveTheme.of(context).setDark();
          }
        },
        icon: Icon(AdaptiveTheme.of(context).mode.isDark
            ? Icons.light_mode
            : Icons.dark_mode));
  }
}
