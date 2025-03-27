import 'dart:ui';

import 'package:cat_catcher_app/core/theme/color/app_color_scheme.dart';
import 'package:cat_catcher_app/shared/domain/entity/preferences.dart';
import 'package:cat_catcher_app/shared/presentation/providers/storage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_theme.dart';

enum ThemeType { light, dark, brand }

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeData>(
  (ref) {
    return ThemeNotifier(AppTheme(), ref);
  },
);

class ThemeNotifier extends StateNotifier<ThemeData> {
  final AppTheme theme;
  final Ref _ref;

  ThemeNotifier(this.theme, this._ref) : super(theme.light()) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final preferences = await _ref.read(storageProvider.future);
    final savedTheme = await preferences.getKey<int>(Preferences.theme.name) ??
        PlatformDispatcher.instance.platformBrightness.index;
    setTheme(ThemeType.values[savedTheme]);
  }

  void setTheme(ThemeType theme, {bool save = false}) async {
    switch (theme) {
      case ThemeType.light:
        state = AppTheme.theme(AppColorScheme.lightScheme());
        if (save) {
          saveTheme(theme.index);
        }
        break;
      case ThemeType.dark:
        state = AppTheme.theme(AppColorScheme.darkScheme());
        if (save) {
          saveTheme(theme.index);
        }
        break;
      case ThemeType.brand:
        state = AppTheme.theme(AppColorScheme.brandScheme());
        if (save) {
          saveTheme(theme.index);
        }
        break;
    }
  }

  saveTheme(int themeIndex) async {
    final prefs = await _ref.read(storageProvider.future);
    prefs.setKey(Preferences.theme.name, themeIndex);
  }
}
