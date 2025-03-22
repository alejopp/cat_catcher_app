import 'dart:ui';

import 'package:cat_catcher_app/core/theme/color/app_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//import 'package:shared_preferences/shared_preferences.dart';

import 'app_theme.dart';

enum ThemeType { light, dark, brand }

// Provider global para acceder al ThemeNotifier en toda la app
final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
  (ref) {
    final defaultTheme = PlatformDispatcher.instance.platformBrightness;
    return ThemeNotifier(AppTheme(), defaultTheme);
  },
);

class ThemeNotifier extends StateNotifier<ThemeData> {
  final AppTheme theme;
  final Brightness defaultTheme;

  ThemeNotifier(this.theme, this.defaultTheme) : super(theme.light()) {
    _loadTheme(defaultTheme);
  }

  Future<void> _loadTheme(Brightness defaultTheme) async {
    //final prefs = await SharedPreferences.getInstance();
    // int themeIndex = prefs.getInt("theme") ?? 0;
    // setTheme(ThemeType.values[themeIndex], save: false);
    final currentDefaultTheme = defaultTheme.name == Brightness.light.name
        ? ThemeType.light
        : ThemeType.dark;
    setTheme(currentDefaultTheme, save: false);
  }

  void setTheme(ThemeType theme, {bool save = true}) async {
    switch (theme) {
      case ThemeType.light:
        state = AppTheme.theme(AppColorScheme.lightScheme());
        break;
      case ThemeType.dark:
        state = AppTheme.theme(AppColorScheme.darkScheme());
        break;
      case ThemeType.brand:
        state = AppTheme.theme(AppColorScheme.brandScheme());
        break;
    }

    if (save) {
      //final prefs = await SharedPreferences.getInstance();
      //await prefs.setInt("theme", theme.index);
    }
  }
}
