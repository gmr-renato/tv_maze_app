import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import '../../design_system/theme/ds_dark_theme.dart';
import '../../design_system/theme/ds_light_theme.dart';
import '../../design_system/theme/ds_model_theme.dart';
import 'presentation/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = SchedulerBinding.instance.window.platformBrightness;
    final isSystemDark = brightness == Brightness.dark;

    return ChangeNotifierProvider(
      create: (_) => DSModelTheme(initialMode: isSystemDark),
      child: Consumer<DSModelTheme>(
        builder: (
          context,
          DSModelTheme themeNotifier,
          child,
        ) {
          return MaterialApp(
            home: const HomePage(title: 'Flutter Demo Home Page'),
            title: 'Flutter Demo',
            theme: dsLightTheme,
            darkTheme: dsDarkTheme,
            themeMode: themeNotifier.isDark ? ThemeMode.dark : ThemeMode.light,
          );
        },
      ),
    );
  }
}
